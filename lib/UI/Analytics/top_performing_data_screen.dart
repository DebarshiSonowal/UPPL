import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:uppl/API/api_services.dart';

import '../../Models/analytics/top_performing_data_model.dart';

@RoutePage()
class TopPerformingDataScreen extends StatefulWidget {
  const TopPerformingDataScreen({Key? key, required this.type})
      : super(key: key);
  final String type;

  @override
  State<TopPerformingDataScreen> createState() =>
      _TopPerformingDataScreenState();
}

class _TopPerformingDataScreenState extends State<TopPerformingDataScreen> {
  final ScrollController _scrollController = ScrollController();
  final List<TopPerformingData> _data = [];
  bool _isLoading = false;
  int _currentPage = 1;
  bool _hasMoreData = true;
  static const int _pageSize = 10;

  @override
  void initState() {
    super.initState();
    _loadInitialData();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _loadInitialData() async {
    await _fetchData();
  }

  Future<void> _fetchData() async {
    if (_isLoading || !_hasMoreData) return;

    setState(() => _isLoading = true);

    try {
      final response =
          await ApiService.instance(context).generateTopPerformingDataAnalytics(
        context,
        _currentPage, // draw
        (_currentPage - 1) * _pageSize, // start
        _pageSize, // length
        widget.type, // type
      );

      if (response.data?.isNotEmpty ?? false) {
        setState(() {
          _data.addAll(response.data!);
          _currentPage++;
          _hasMoreData = response.data!.length >= _pageSize;
        });
      } else {
        setState(() => _hasMoreData = false);
        if (_data.isEmpty) {
          _showMessage('No data available');
        }
      }
    } catch (e) {
      _showMessage('Error: ${e.toString()}');
    } finally {
      setState(() => _isLoading = false);
    }
  }

  void _showMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 3),
        backgroundColor: Colors.red,
      ),
    );
  }

  void _onScroll() {
    final position = _scrollController.position;
    if (position.pixels >= position.maxScrollExtent - 200) {
      _fetchData();
    }
  }

  Future<void> _refreshData() async {
    setState(() {
      _data.clear();
      _currentPage = 1;
      _hasMoreData = true;
    });
    await _fetchData();
  }

  Widget _buildLoadingIndicator() {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget _buildEmptyState() {
    return const Center(
      child: Text('No data available'),
    );
  }

  Widget _buildDataItem(TopPerformingData item) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Rank ${item.slno}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  item.btcConstituencyName,
                  style: const TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text('Representative: ${item.name}'),
            const SizedBox(height: 8),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildStatColumn('Total Members', item.memberCount.toString()),
                _buildStatColumn('Verified', item.verifiedMemberCount),
                _buildStatColumn('Non-Verified', item.nonVerifiedMemberCount),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatColumn(String label, String value) {
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Performing Constituencies'),
      ),
      body: RefreshIndicator(
        onRefresh: _refreshData,
        child: _data.isEmpty && !_isLoading
            ? _buildEmptyState()
            : ListView.builder(
                controller: _scrollController,
                itemCount: _data.length + (_isLoading ? 1 : 0),
                itemBuilder: (context, index) {
                  if (index == _data.length) {
                    return _buildLoadingIndicator();
                  }
                  return _buildDataItem(_data[index]);
                },
              ),
      ),
    );
  }
}
