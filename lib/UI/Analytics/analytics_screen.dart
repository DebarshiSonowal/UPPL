import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:uppl/Models/dashboard_stats_model.dart';
import 'package:uppl/Repository/repository.dart';

import '../../API/api_services.dart';
import '../../Constants/configuration.dart';

@RoutePage()
class AnalyticsScreen extends StatefulWidget {
  const AnalyticsScreen({super.key});

  @override
  State<AnalyticsScreen> createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    fetchData();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Configuration.homeBgColor,
      appBar: AppBar(
        title: Text(
          'Analytics Dashboard',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.w700,
              ),
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Overview'),
            Tab(text: 'Details'),
          ],
        ),
      ),
      body: Consumer<Repository>(builder: (context, repository, _) {
        final data = repository.dashboardStats;
        return Skeletonizer(
          enabled: data == null,
          child: TabBarView(
            controller: _tabController,
            children: [
              _buildOverviewTab(data),
              _buildDetailsTab(data),
            ],
          ),
        );
      }),
    );
  }

  Widget _buildOverviewTab(DashboardStats? data) {
    return RefreshIndicator(
      onRefresh: () async => fetchData(),
      child: SingleChildScrollView(
        padding: EdgeInsets.all(4.w),
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBasicStats(context, data),
            SizedBox(height: 3.h),
            _buildGenderDistribution(context, data),
            SizedBox(height: 3.h),
            if (data?.weeklyPerformance != null)
              _buildWeeklyStatsCard(context, data?.weeklyPerformance ?? {}),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailsTab(DashboardStats? data) {
    return RefreshIndicator(
      onRefresh: () async => fetchData(),
      child: ListView(
        padding: EdgeInsets.all(4.w),
        children: [
          _buildTopPerformersCard(context, data?.topPerformers),
          SizedBox(height: 3.h),
          _buildPrimaryMembersCard(context, data?.topPerformingPrimary),
          SizedBox(height: 3.h),
          _buildTopBoothsCard(context, data?.topPerformingBooth),
          SizedBox(height: 3.h),
          _buildDistrictsCard(context, data?.topPerformingPartyDistrict),
          SizedBox(height: 3.h),
          _buildConstituenciesCard(context, data?.topPerformingBtcConstituency),
          SizedBox(height: 3.h),
          _buildWorstPerformersCard(context, data?.worstPerformingPrimary),
        ],
      ),
    );
  }

  Widget _buildBasicStats(BuildContext context, DashboardStats? data) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      padding: EdgeInsets.all(4.w),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).primaryColor,
            Theme.of(context).primaryColor.withOpacity(0.8),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).primaryColor.withOpacity(0.3),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Member Statistics',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
          ),
          SizedBox(height: 2.h),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            mainAxisSpacing: 3.w,
            crossAxisSpacing: 3.w,
            childAspectRatio: 1.5,
            children: [
              _StatCard(
                title: 'Total Members',
                value: '${data?.totalMembers ?? 0}',
                color: Colors.white,
              ),
              _StatCard(
                title: 'Achievement',
                value: '${data?.percentageAchieved?.toStringAsFixed(1) ?? 0}%',
                color: Colors.white,
              ),
              _StatCard(
                title: 'Verified',
                value: '${data?.verifiedMemberCount ?? 0}',
                color: Colors.white,
              ),
              _StatCard(
                title: 'Pending',
                value: '${data?.nonVerifiedMemberCount ?? 0}',
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> fetchData() async {
    try {
      final response =
          await ApiService.instance(context).generateAnalytics(context);
      if (mounted) {
        Provider.of<Repository>(context, listen: false)
            .setDashboardStats(response);
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: const Row(
            children: [
              Icon(Icons.error_outline, color: Colors.white),
              SizedBox(width: 8),
              Text('Failed to load analytics data'),
            ],
          ),
          backgroundColor: Colors.red,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          duration: const Duration(seconds: 2),
        ));
      }
    }
  }
}

class _StatCard extends StatelessWidget {
  final String title;
  final String value;
  final Color color;

  const _StatCard({
    required this.title,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.w),
      decoration: BoxDecoration(
        color:
            color.withOpacity(0.2), // Increased opacity for better visibility
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
            color: color.withOpacity(0.4)), // Increased border opacity
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value,
            style: TextStyle(
              color: color,
              fontSize: 22.sp, // Increased font size
              fontWeight: FontWeight.w800, // Increased weight
              shadows: [
                Shadow(
                  color: color.withOpacity(0.2),
                  offset: const Offset(0, 1),
                  blurRadius: 2,
                ),
              ],
            ),
          ),
          SizedBox(height: 1.5.h), // Increased spacing
          Text(
            title,
            style: TextStyle(
              color: color, // Removed opacity for better visibility
              fontSize: 13.sp, // Slightly increased font size
              fontWeight: FontWeight.w600, // Increased weight
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

Widget _buildTopPerformersCard(
    BuildContext context, List<TopPerformer>? performers) {
  return Card(
    elevation: 4,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: Padding(
      padding: EdgeInsets.all(4.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Top Performers',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          SizedBox(height: 2.h),
          if (performers?.isEmpty ?? true)
            Center(
              child: Text(
                'No data available',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.grey,
                    ),
              ),
            )
          else
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: performers!.length,
              separatorBuilder: (context, index) => Divider(height: 3.h),
              itemBuilder: (context, index) {
                final performer = performers[index];
                return Row(
                  children: [
                    CircleAvatar(
                      backgroundColor:
                          Theme.of(context).primaryColor.withOpacity(0.1),
                      child: Text(
                        '${index + 1}',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(width: 3.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            performer.memberName ?? 'Unknown',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Text(
                            'Members: ${performer.verifiedMemberCount ?? 0}',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: Colors.grey,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
        ],
      ),
    ),
  );
}

Widget _buildPrimaryMembersCard(
    BuildContext context, List<TopPerformingPrimary>? members) {
  return Card(
    elevation: 4,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: Padding(
      padding: EdgeInsets.all(4.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Top Primary Members',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          SizedBox(height: 2.h),
          if (members?.isEmpty ?? true)
            Center(
              child: Text(
                'No data available',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.grey,
                    ),
              ),
            )
          else
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: members!.length,
              separatorBuilder: (context, index) => Divider(height: 3.h),
              itemBuilder: (context, index) {
                final member = members[index];
                return Row(
                  children: [
                    CircleAvatar(
                      backgroundColor:
                          Theme.of(context).primaryColor.withOpacity(0.1),
                      child: Text(
                        '${index + 1}',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(width: 3.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            member.primaryName ?? 'Unknown',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Text(
                            'Members: ${member.verifiedMemberCount ?? 0}',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: Colors.grey,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
        ],
      ),
    ),
  );
}

Widget _buildGenderDistribution(BuildContext context, DashboardStats? data) {
  return Card(
    elevation: 4,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: Padding(
      padding: EdgeInsets.all(4.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Gender Distribution',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          SizedBox(height: 2.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _GenderStat(
                icon: Icons.male,
                label: 'Male',
                count: double.parse(data?.malePercentage ?? "0").round(),
                color: Colors.blue,
              ),
              _GenderStat(
                icon: Icons.female,
                label: 'Female',
                count: double.parse(data?.femalePercentage ?? "0").round(),
                color: Colors.pink,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget _buildWeeklyStatsCard(
    BuildContext context, Map<String, dynamic> weeklyData) {
  return Card(
    elevation: 4,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: Padding(
      padding: EdgeInsets.all(4.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Weekly Performance',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          SizedBox(height: 2.h),
          if (weeklyData.isEmpty)
            Center(
              child: Text(
                'No data available',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.grey,
                    ),
              ),
            )
          else
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: weeklyData.length,
              separatorBuilder: (context, index) => Divider(height: 3.h),
              itemBuilder: (context, index) {
                final entry = weeklyData.entries.elementAt(index);
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      entry.key,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '${entry.value}',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor,
                          ),
                    ),
                  ],
                );
              },
            ),
        ],
      ),
    ),
  );
}

class _GenderStat extends StatelessWidget {
  final IconData icon;
  final String label;
  final int count;
  final Color color;

  const _GenderStat({
    required this.icon,
    required this.label,
    required this.count,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 30, color: color),
        SizedBox(height: 1.h),
        Text(
          '$count',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: color,
              ),
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}

Widget _buildTopBoothsCard(
    BuildContext context, List<TopPerformingBooth>? booths) {
  return Card(
    elevation: 4,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: Padding(
      padding: EdgeInsets.all(4.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Top Performing Booths',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          SizedBox(height: 2.h),
          if (booths?.isEmpty ?? true)
            Center(
              child: Text(
                'No data available',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.grey,
                    ),
              ),
            )
          else
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: booths!.length,
              separatorBuilder: (context, index) => Divider(height: 3.h),
              itemBuilder: (context, index) {
                final booth = booths[index];
                return Row(
                  children: [
                    CircleAvatar(
                      backgroundColor:
                          Theme.of(context).primaryColor.withOpacity(0.1),
                      child: Text(
                        '${index + 1}',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(width: 3.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            booth.boothName ?? 'Unknown',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Text(
                            'Members: ${booth.verifiedMemberCount ?? 0}',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: Colors.grey,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
        ],
      ),
    ),
  );
}

Widget _buildConstituenciesCard(
    BuildContext context, List<TopPerformingBtcConstituency>? constituencies) {
  return Card(
    elevation: 4,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: Padding(
      padding: EdgeInsets.all(4.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Top Performing Constituencies',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          SizedBox(height: 2.h),
          if (constituencies?.isEmpty ?? true)
            Center(
              child: Text(
                'No data available',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.grey,
                    ),
              ),
            )
          else
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: constituencies!.length,
              separatorBuilder: (context, index) => Divider(height: 3.h),
              itemBuilder: (context, index) {
                final constituency = constituencies[index];
                return Row(
                  children: [
                    CircleAvatar(
                      backgroundColor:
                          Theme.of(context).primaryColor.withOpacity(0.1),
                      child: Text(
                        '${index + 1}',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(width: 3.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            constituency.btcConstituencyName ?? 'Unknown',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Text(
                            'Members: ${constituency.verifiedMemberCount ?? 0}',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: Colors.grey,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
        ],
      ),
    ),
  );
}

Widget _buildWorstPerformersCard(
    BuildContext context, List<TopPerformingPrimary>? performers) {
  return Card(
    elevation: 4,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: Padding(
      padding: EdgeInsets.all(4.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Worst Performing Primary Members',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          SizedBox(height: 2.h),
          if (performers?.isEmpty ?? true)
            Center(
              child: Text(
                'No data available',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.grey,
                    ),
              ),
            )
          else
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: performers!.length,
              separatorBuilder: (context, index) => Divider(height: 3.h),
              itemBuilder: (context, index) {
                final performer = performers[index];
                return Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.red.withOpacity(0.1),
                      child: Text(
                        '${index + 1}',
                        style: const TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(width: 3.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            performer.primaryName ?? 'Unknown',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Text(
                            'Members: ${performer.verifiedMemberCount ?? 0}',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: Colors.grey,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
        ],
      ),
    ),
  );
}

Widget _buildDistrictsCard(
    BuildContext context, List<TopPerformingPartyDistrict>? districts) {
  return Card(
    elevation: 4,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: Padding(
      padding: EdgeInsets.all(4.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Top Performing Districts',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          SizedBox(height: 2.h),
          if (districts?.isEmpty ?? true)
            Center(
              child: Text(
                'No data available',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.grey,
                    ),
              ),
            )
          else
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: districts!.length,
              separatorBuilder: (context, index) => Divider(height: 3.h),
              itemBuilder: (context, index) {
                final district = districts[index];
                return Row(
                  children: [
                    CircleAvatar(
                      backgroundColor:
                          Theme.of(context).primaryColor.withOpacity(0.1),
                      child: Text(
                        '${index + 1}',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(width: 3.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            district.partyDistrictName ?? 'Unknown',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Text(
                            'Members: ${district.verifiedMemberCount ?? 0}',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: Colors.grey,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
        ],
      ),
    ),
  );
}
