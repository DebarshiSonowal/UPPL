import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uppl/API/api_services.dart';
import 'package:uppl/Repository/repository.dart';

@RoutePage()
class TopPerformerScreen extends StatefulWidget {
  const TopPerformerScreen({super.key});

  @override
  State<TopPerformerScreen> createState() => _TopPerformerScreenState();
}

class _TopPerformerScreenState extends State<TopPerformerScreen> {
  static const _pageSize = 30;
  bool _isLoading = false;
  int _currentPage = 0;
  int _totalPages = 0;
  int _totalRecords = 0;

  @override
  void initState() {
    super.initState();
    _loadPage(_currentPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Performers'),
      ),
      body: Consumer<Repository>(
        builder: (context, repository, _) {
          final performers = repository.topPerformers;

          if (performers.isEmpty && _isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          return Column(
            children: [
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () async {
                    _currentPage = 0;
                    _totalPages = 0;
                    _totalRecords = 0;
                    repository.clearTopPerformers();
                    await _loadPage(0);
                  },
                  child: performers.isEmpty
                      ? const Center(child: Text('No performers found'))
                      : ListView.builder(
                          itemCount: performers.length,
                          itemBuilder: (context, index) {
                            final performer = performers[index];
                            if (index == performers.length - 1 &&
                                _currentPage < _totalPages - 1) {
                              _loadPage(_currentPage + 1);
                            }
                            return Card(
                              elevation: 4,
                              margin: const EdgeInsets.all(12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  gradient: const LinearGradient(
                                    colors: [Colors.white, Color(0xFFF5F5F5)],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(Icons.person,
                                            color: Colors.blue),
                                        const SizedBox(width: 8),
                                        Expanded(
                                          child: Text(
                                            performer.memberName?.trim() ??
                                                "N/A",
                                            style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black87,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Divider(height: 16),
                                    InfoRow(
                                      icon: Icons.location_on,
                                      label: 'Constituency',
                                      value: performer.btcConstituencyName
                                              ?.trim() ??
                                          "N/A",
                                    ),
                                    const SizedBox(height: 8),
                                    InfoRow(
                                      icon: Icons.link,
                                      label: 'Total Referred Members',
                                      value:
                                          performer.refCount?.toString() ?? "0",
                                    ),
                                    const SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: InfoRow(
                                            icon: Icons.verified_user,
                                            label: 'Verified',
                                            value: performer.verifiedMemberCount
                                                    ?.toString() ??
                                                "0",
                                            color: Colors.green,
                                          ),
                                        ),
                                        Expanded(
                                          child: InfoRow(
                                            icon: Icons.pending,
                                            label: 'Unverified',
                                            value: performer
                                                    .nonVerifiedMemberCount
                                                    ?.toString() ??
                                                "0",
                                            color: Colors.orange,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                ),
              ),
              if (_isLoading)
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircularProgressIndicator(),
                ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.chevron_left),
                      onPressed: _currentPage > 0
                          ? () async {
                              setState(() {
                                _currentPage--;
                              });
                              await _loadPage(_currentPage);
                            }
                          : null,
                    ),
                    Text(
                        'Page ${_currentPage + 1} of ${_totalPages == 0 ? 1 : _totalPages}'),
                    IconButton(
                      icon: const Icon(Icons.chevron_right),
                      onPressed: _currentPage < _totalPages - 1
                          ? () async {
                              setState(() {
                                _currentPage++;
                              });
                              await _loadPage(_currentPage);
                            }
                          : null,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Future<void> _loadPage(int page) async {
    if (_isLoading) return;

    setState(() => _isLoading = true);

    try {
      final start = page * _pageSize;
      final response = await ApiService.instance(context)
          .generateTopPerformerAnalytics(context, 1, start, _pageSize);

      if (!mounted) return;

      final data = response.data;
      if (data != null && data.isNotEmpty) {
        final repository = Provider.of<Repository>(context, listen: false);

        if (page == 0) {
          repository.clearTopPerformers();
          _totalRecords = response.recordsTotal ?? 0;
          _totalPages = (_totalRecords + _pageSize - 1) ~/ _pageSize;
        }

        repository.setTopPerformers(data);
      } else {
        if (!mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('No more data available'),
            behavior: SnackBarBehavior.floating,
          ),
        );
        if (page > 0) {
          setState(() {
            _currentPage--;
          });
        }
      }
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error: ${e.toString()}'),
          behavior: SnackBarBehavior.floating,
        ),
      );
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }
}

class InfoRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Color? color;

  const InfoRow({
    Key? key,
    required this.icon,
    required this.label,
    required this.value,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: (color ?? Colors.blue).withOpacity(0.1),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Icon(
              icon,
              size: 16,
              color: color ?? Colors.blue,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[700],
              fontWeight: FontWeight.w600,
            ),
          ),
          const Text(
            ' : ',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
              fontWeight: FontWeight.w400,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                fontSize: 14,
                color: color ?? Colors.black87,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
