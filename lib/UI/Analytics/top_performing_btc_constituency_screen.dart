import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uppl/API/api_services.dart';
import 'package:uppl/Repository/repository.dart';

@RoutePage()
class TopPerformingBTCConstituencyScreen extends StatefulWidget {
  const TopPerformingBTCConstituencyScreen({Key? key}) : super(key: key);

  @override
  State<TopPerformingBTCConstituencyScreen> createState() =>
      _TopPerformingBTCConstituencyScreenState();
}

class _TopPerformingBTCConstituencyScreenState
    extends State<TopPerformingBTCConstituencyScreen> {
  static const int _itemsPerPage = 10;
  int _currentPage = 0;
  int draw = 1;
  int start = 0;
  int length = 10;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void _loadNextPage() {
    setState(() {
      _currentPage++;
      start = _currentPage * length;
      draw++;
    });
    fetchData();
  }

  void _loadPreviousPage() {
    if (_currentPage > 0) {
      setState(() {
        _currentPage--;
        start = _currentPage * length;
        draw++;
      });
      fetchData();
    }
  }

  @override
  Widget build(BuildContext context) {
    final allBtcData =
        Provider.of<Repository>(context).topPerformingBtcConstituency;
    final totalPages = (allBtcData.length / _itemsPerPage).ceil();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Performing BTC Constituency'),
        centerTitle: true,
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Performance Overview',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 16),
                            ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: allBtcData.length,
                              itemBuilder: (context, index) {
                                final constituency = allBtcData[index];
                                final verifiedCount = int.tryParse(
                                        constituency.verifiedMemberCount ??
                                            "0") ??
                                    0;
                                final totalCount =
                                    constituency.memberCount ?? 0;
                                final performance = totalCount > 0
                                    ? verifiedCount / totalCount
                                    : 0.0;

                                return ListTile(
                                  leading: CircleAvatar(
                                    child: Text('${constituency.slno}'),
                                  ),
                                  title: Text(constituency.name ?? 'Unknown'),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          'Verified Members: ${constituency.verifiedMemberCount}'),
                                      Text(
                                          'Total Members: ${constituency.memberCount}'),
                                      LinearProgressIndicator(
                                        value: performance,
                                        backgroundColor: Colors.grey,
                                        valueColor:
                                            const AlwaysStoppedAnimation<Color>(
                                                Colors.blue),
                                      ),
                                    ],
                                  ),
                                  trailing: const Icon(Icons.arrow_forward_ios),
                                );
                              },
                            ),
                            const SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.arrow_back),
                                  onPressed: _currentPage > 0
                                      ? _loadPreviousPage
                                      : null,
                                ),
                                Text('${_currentPage + 1} / $totalPages'),
                                IconButton(
                                  icon: const Icon(Icons.arrow_forward),
                                  onPressed: allBtcData.length >= length
                                      ? _loadNextPage
                                      : null,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Statistical Overview',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                _buildStatCard('Total\nConstituencies',
                                    '${allBtcData.length}'),
                                _buildStatCard('Total\nMembers',
                                    '${allBtcData.fold(0, (sum, item) => sum + (item.memberCount ?? 0))}'),
                                _buildStatCard('Verified\nMembers',
                                    '${allBtcData.fold(0, (sum, item) => sum + (int.tryParse(item.verifiedMemberCount ?? "0") ?? 0))}'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }

  Widget _buildStatCard(String title, String value) {
    return Column(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  void fetchData() async {
    setState(() {
      isLoading = true;
    });

    final response = await ApiService.instance(context)
        .generateBtcConsituencyAnalytics(context, draw, start, length);

    setState(() {
      isLoading = false;
    });

    if (response.data?.isNotEmpty ?? false) {
      if (mounted) {
        Provider.of<Repository>(context, listen: false)
            .setTopPerformingBtcConstituency(response.data ?? []);
      }
    } else {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Failed to fetch constituency data'),
            duration: Duration(seconds: 3),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }
}
