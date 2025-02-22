import 'package:auto_route/auto_route.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:uppl/Models/dashboard_stats_model.dart';
import 'package:uppl/Navigation/Router/app_router.dart';
import 'package:uppl/Repository/repository.dart';

import '../../API/api_services.dart';
import '../../Constants/configuration.dart';
import '../../Constants/routes.dart';

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
          indicatorColor: Colors.green,
          labelColor: Colors.green,
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
            Card(
              child: Padding(
                padding: EdgeInsets.all(4.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Achievement Progress (Membership Target 10 Lakhs)',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    SizedBox(height: 3.h),
                    LinearProgressIndicator(
                      value: (data?.percentageAchieved ?? 0) / 100,
                      backgroundColor: Colors.grey[200],
                      valueColor: const AlwaysStoppedAnimation<Color>(
                        Colors.orange,
                      ),
                      minHeight: 2.h,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    SizedBox(height: 2.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Current',
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 12.sp,
                              ),
                            ),
                            Text(
                              '${(data?.percentageAchieved ?? 0).toInt()}%',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp,
                                color: Colors.orange,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Target',
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 12.sp,
                              ),
                            ),
                            Text(
                              '${100 - double.parse("${data?.percentageAchieved ?? 0}").toInt()}%',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
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
          SizedBox(height: 3.h),
          _buildWorstPerformingBoothsCard(context, data?.worstPerformingBooth),
          SizedBox(height: 3.h),
          _buildWorstPerformingDistrictsCard(
              context, data?.worstPerformingPartyDistrict),
          SizedBox(height: 3.h),
          _buildWorstPerformingConstituenciesCard(
              context, data?.worstPerformingBtcConstituency),
        ],
      ),
    );
  }

  Widget _buildBasicStats(BuildContext context, DashboardStats? data) {
    return Card(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: EdgeInsets.all(4.w),
        decoration: BoxDecoration(
          // color: Configuration.primaryColor,
          // gradient: LinearGradient(
          //   colors: [
          //     Configuration.primaryColor,
          //     Theme.of(context)
          //         .primaryColor
          //         .withOpacity(0.9), // Increased opacity
          //   ],
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight,
          // ),
          borderRadius: BorderRadius.circular(20),
          // boxShadow: [
          //   BoxShadow(
          //     color: Theme.of(context)
          //         .primaryColor
          //         .withOpacity(0.4), // Increased shadow opacity
          //     blurRadius: 20, // Increased blur
          //     spreadRadius: 2, // Added spread
          //     offset: const Offset(0, 5),
          //   ),
          // ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Member Statistics',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w500, // Increased weight
                    color: Colors.black,
                    fontSize: 18.sp, // Increased font size
                    // shadows: [
                    //   // Added text shadow
                    //   Shadow(
                    //     color: Colors.black.withOpacity(0.3),
                    //     offset: const Offset(0, 1),
                    //     blurRadius: 2,
                    //   ),
                    // ],
                  ),
            ),
            SizedBox(height: 3.h), // Increased spacing
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              mainAxisSpacing: 4.w,
              // Increased spacing
              crossAxisSpacing: 4.w,
              // Increased spacing
              childAspectRatio: 1.4,
              // Adjusted for better visibility
              children: [
                _StatCard(
                  title: 'Total Members Joined Today',
                  value: '${data?.totalMembersToday ?? 0}',
                  color: Colors.orange,
                ),
                _StatCard(
                  title: 'Total Members Joined',
                  value: '${data?.totalMembers ?? 0}',
                  color: Colors.blue,
                ),
                _StatCard(
                  title: 'Verified Members',
                  value: '${data?.verifiedMemberCount ?? 0}',
                  color: Colors.green,
                ),
                _StatCard(
                  title: 'Non Verified Members',
                  value: '${data?.nonVerifiedMemberCount ?? 0}',
                  color: Colors.red,
                ),
              ],
            ),
          ],
        ),
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
      padding: EdgeInsets.all(4.w),
      decoration: BoxDecoration(
        color: color.withOpacity(0.08),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: color.withOpacity(0.3),
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.1),
            blurRadius: 8,
            spreadRadius: 1,
            offset: const Offset(0, 1),
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
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              shadows: [
                Shadow(
                  color: color.withOpacity(0.1),
                  offset: const Offset(0, 1),
                  blurRadius: 1,
                ),
              ],
            ),
          ),
          SizedBox(height: 1.5.h),
          Text(
            title,
            style: TextStyle(
              color: color,
              fontSize: 13.sp,
              fontWeight: FontWeight.w600,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Top Performers',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              TextButton(
                onPressed: () {
                  // Handle view more action
                  AutoRouter.of(context)
                      .pushNamed(CustomRoutes.topPerformerAnalyticsScreen);
                },
                child: Text(
                  'View More',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
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
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 4.w,
                        backgroundColor:
                            Configuration.secondaryColor.withOpacity(0.1),
                        child: Text(
                          '${index + 1}',
                          style: TextStyle(
                            color: Configuration.secondaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                      SizedBox(width: 4.w),
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
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13.sp,
                                  ),
                            ),
                            SizedBox(height: 1.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _buildStatChip(
                                  context,
                                  'Verified',
                                  performer.verifiedMemberCount?.toString() ??
                                      '0',
                                  Colors.green,
                                ),
                                _buildStatChip(
                                  context,
                                  'Unverified',
                                  performer.nonVerifiedMemberCount
                                          ?.toString() ??
                                      '0',
                                  Colors.orange,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Top Performing Primary',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              TextButton(
                onPressed: () {
                  // Handle view all action
                  AutoRouter.of(context)
                      .push(TopPerformingDataRoute(type: 'topPrimary'));
                },
                child: Text(
                  'View All',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
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
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor:
                            Configuration.secondaryColor.withOpacity(0.1),
                        child: Text(
                          '${index + 1}',
                          style: TextStyle(
                            color: Configuration.secondaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
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
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.sp,
                                  ),
                            ),
                            SizedBox(height: 1.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _buildStatChip(
                                  context,
                                  'Verified',
                                  member.verifiedMemberCount?.toString() ?? '0',
                                  Colors.green,
                                ),
                                _buildStatChip(
                                  context,
                                  'Unverified',
                                  member.nonVerifiedMemberCount?.toString() ??
                                      '0',
                                  Colors.orange,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
            SizedBox(
              height: 250, // Increased height for better visibility
              child: LineChart(
                LineChartData(
                  gridData: FlGridData(
                    show: true,
                    drawVerticalLine: true,
                    horizontalInterval: 1,
                    verticalInterval: 1,
                    getDrawingHorizontalLine: (value) {
                      return FlLine(
                        color: Colors.grey.withOpacity(0.1),
                        strokeWidth: 1,
                      );
                    },
                    getDrawingVerticalLine: (value) {
                      return FlLine(
                        color: Colors.grey.withOpacity(0.1),
                        strokeWidth: 1,
                      );
                    },
                  ),
                  titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 35,
                        getTitlesWidget: (value, meta) {
                          return Padding(
                            padding: EdgeInsets.only(right: 2.w),
                            child: Text(
                              value.toInt().toString(),
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 30,
                        getTitlesWidget: (value, meta) {
                          if (value.toInt() >= 0 &&
                              value.toInt() < weeklyData.length) {
                            return Padding(
                              padding: EdgeInsets.only(top: 1.h),
                              child: Text(
                                weeklyData.keys
                                    .elementAt(value.toInt())
                                    .substring(0, 3),
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            );
                          }
                          return const Text('');
                        },
                      ),
                    ),
                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                  ),
                  borderData: FlBorderData(
                    show: true,
                    border: Border.all(color: Colors.grey.withOpacity(0.2)),
                  ),
                  lineBarsData: [
                    LineChartBarData(
                      spots: weeklyData.entries
                          .map((entry) => FlSpot(
                              weeklyData.keys
                                  .toList()
                                  .indexOf(entry.key)
                                  .toDouble(),
                              double.parse(entry.value.toString())))
                          .toList(),
                      isCurved: true,
                      color: Theme.of(context).primaryColor,
                      barWidth: 4,
                      isStrokeCapRound: true,
                      dotData: FlDotData(
                        show: true,
                        getDotPainter: (spot, percent, barData, index) =>
                            FlDotCirclePainter(
                          radius: 6,
                          color: Colors.white,
                          strokeWidth: 3,
                          strokeColor: Theme.of(context).primaryColor,
                        ),
                      ),
                      belowBarData: BarAreaData(
                        show: true,
                        gradient: LinearGradient(
                          colors: [
                            Theme.of(context).primaryColor.withOpacity(0.3),
                            Theme.of(context).primaryColor.withOpacity(0.0),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      shadow: Shadow(
                        color: Theme.of(context).primaryColor.withOpacity(0.2),
                        offset: const Offset(0, 4),
                        blurRadius: 8,
                      ),
                    ),
                  ],
                  lineTouchData: LineTouchData(
                    touchTooltipData: LineTouchTooltipData(
                      // tooltipBgColor: Colors.white,
                      tooltipRoundedRadius: 8,
                      tooltipBorder: BorderSide(
                        color: Theme.of(context).primaryColor.withOpacity(0.2),
                      ),
                      tooltipPadding: EdgeInsets.all(2.w),
                      getTooltipItems: (spots) {
                        return spots.map((spot) {
                          return LineTooltipItem(
                            '${spot.y.toInt()}',
                            TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                            ),
                          );
                        }).toList();
                      },
                    ),
                  ),
                ),
              ),
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
          '$count %',
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Top Performing Booths',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              TextButton(
                onPressed: () {
                  // Handle view all action
                  AutoRouter.of(context)
                      .push(TopPerformingDataRoute(type: 'topBooth'));
                },
                child: Text(
                  'View All',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
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
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 5.w,
                        backgroundColor:
                            Configuration.secondaryColor.withOpacity(0.1),
                        child: Text(
                          '${index + 1}',
                          style: TextStyle(
                            color: Configuration.secondaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                      SizedBox(width: 4.w),
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
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.sp,
                                  ),
                            ),
                            SizedBox(height: 1.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _buildStatChip(
                                  context,
                                  'Verified',
                                  booth.verifiedMemberCount?.toString() ?? '0',
                                  Colors.green,
                                ),
                                _buildStatChip(
                                  context,
                                  'Unverified',
                                  booth.nonVerifiedMemberCount?.toString() ??
                                      '0',
                                  Colors.orange,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 50.w,
                child: Text(
                  'Top Performing BTC Constituencies',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              TextButton(
                onPressed: () {
                  // Handle view all action
                  AutoRouter.of(context).pushNamed(
                      CustomRoutes.topPerformingBtcConstituencyAnalyticsScreen);
                },
                child: Text(
                  'View All',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
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
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor:
                            Configuration.secondaryColor.withOpacity(0.1),
                        child: Text(
                          '${index + 1}',
                          style: TextStyle(
                            color: Configuration.secondaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
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
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.sp,
                                  ),
                            ),
                            SizedBox(height: 1.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _buildStatChip(
                                  context,
                                  'Verified',
                                  constituency.verifiedMemberCount
                                          ?.toString() ??
                                      '0',
                                  Colors.green,
                                ),
                                _buildStatChip(
                                  context,
                                  'Unverified',
                                  constituency.nonVerifiedMemberCount
                                          ?.toString() ??
                                      '0',
                                  Colors.orange,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Worst Performing Primary',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              TextButton(
                onPressed: () {
                  // Handle view all action
                  AutoRouter.of(context)
                      .push(TopPerformingDataRoute(type: 'worstPrimary'));
                },
                child: Text(
                  'View All',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
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
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.red.withOpacity(0.1),
                        child: Text(
                          '${index + 1}',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                      SizedBox(width: 4.w),
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
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.sp,
                                  ),
                            ),
                            SizedBox(height: 1.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _buildStatChip(
                                  context,
                                  'Verified',
                                  performer.verifiedMemberCount?.toString() ??
                                      '0',
                                  Colors.green,
                                ),
                                _buildStatChip(
                                  context,
                                  'Unverified',
                                  performer.nonVerifiedMemberCount
                                          ?.toString() ??
                                      '0',
                                  Colors.orange,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 50.w,
                child: Text(
                  'Top Performing Party Districts',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              TextButton(
                onPressed: () {
                  // Handle view all action
                  AutoRouter.of(context)
                      .push(TopPerformingDataRoute(type: 'topPartyDistrict'));
                },
                child: Text(
                  'View All',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
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
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor:
                            Configuration.secondaryColor.withOpacity(0.1),
                        child: Text(
                          '${index + 1}',
                          style: TextStyle(
                            color: Configuration.secondaryColor,
                            fontWeight: FontWeight.w900,
                            fontSize: 16.sp,
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
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.sp,
                                  ),
                            ),
                            SizedBox(height: 1.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _buildStatChip(
                                  context,
                                  'Verified',
                                  district.verifiedMemberCount?.toString() ??
                                      '0',
                                  Colors.green,
                                ),
                                _buildStatChip(
                                  context,
                                  'Unverified',
                                  district.nonVerifiedMemberCount?.toString() ??
                                      '0',
                                  Colors.orange,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
        ],
      ),
    ),
  );
}

Widget _buildStatChip(
  BuildContext context,
  String label,
  String value,
  Color color,
) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 0.5.h),
    decoration: BoxDecoration(
      color: color.withOpacity(0.1),
      borderRadius: BorderRadius.circular(15),
      border: Border.all(color: color.withOpacity(0.3)),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label,
          style: TextStyle(
            color: color,
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(width: 1.w),
        Text(
          value,
          style: TextStyle(
            color: color,
            fontSize: 13.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}

Widget _buildWorstPerformingBoothsCard(
    BuildContext context, List<TopPerformingBooth>? booths) {
  return Card(
    elevation: 4,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: Padding(
      padding: EdgeInsets.all(4.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Worst Performing Booths',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              TextButton(
                onPressed: () {
                  // Handle view all action
                  AutoRouter.of(context)
                      .push(TopPerformingDataRoute(type: 'worstBooth'));
                },
                child: Text(
                  'View All',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
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
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.red.withOpacity(0.1),
                        child: Text(
                          '${index + 1}',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                      SizedBox(width: 4.w),
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
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.sp,
                                  ),
                            ),
                            SizedBox(height: 1.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _buildStatChip(
                                  context,
                                  'Verified',
                                  booth.verifiedMemberCount?.toString() ?? '0',
                                  Colors.green,
                                ),
                                _buildStatChip(
                                  context,
                                  'Unverified',
                                  booth.nonVerifiedMemberCount?.toString() ??
                                      '0',
                                  Colors.orange,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
        ],
      ),
    ),
  );
}

Widget _buildWorstPerformingDistrictsCard(
    BuildContext context, List<TopPerformingPartyDistrict>? districts) {
  return Card(
    elevation: 4,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: Padding(
      padding: EdgeInsets.all(4.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 50.w,
                child: Text(
                  'Worst Performing Party Districts',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              TextButton(
                onPressed: () {
                  // Handle view all action
                  AutoRouter.of(context)
                      .push(TopPerformingDataRoute(type: 'worstPartyDistrict'));
                },
                child: Text(
                  'View All',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
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
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.red.withOpacity(0.1),
                        child: Text(
                          '${index + 1}',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
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
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.sp,
                                  ),
                            ),
                            SizedBox(height: 1.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _buildStatChip(
                                  context,
                                  'Verified',
                                  district.verifiedMemberCount?.toString() ??
                                      '0',
                                  Colors.green,
                                ),
                                _buildStatChip(
                                  context,
                                  'Unverified',
                                  district.nonVerifiedMemberCount?.toString() ??
                                      '0',
                                  Colors.orange,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
        ],
      ),
    ),
  );
}

Widget _buildWorstPerformingConstituenciesCard(
    BuildContext context, List<TopPerformingBtcConstituency>? constituencies) {
  return Card(
    elevation: 4,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: Padding(
      padding: EdgeInsets.all(4.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 50.w,
                child: Text(
                  'Worst Performing Constituencies',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              TextButton(
                onPressed: () {
                  // Handle view all action
                  AutoRouter.of(context).push(
                      TopPerformingDataRoute(type: 'worstBtcConstituency'));
                },
                child: Text(
                  'View All',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
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
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.red.withOpacity(0.1),
                        child: Text(
                          '${index + 1}',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
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
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.sp,
                                  ),
                            ),
                            SizedBox(height: 1.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _buildStatChip(
                                  context,
                                  'Verified',
                                  constituency.verifiedMemberCount
                                          ?.toString() ??
                                      '0',
                                  Colors.green,
                                ),
                                _buildStatChip(
                                  context,
                                  'Unverified',
                                  constituency.nonVerifiedMemberCount
                                          ?.toString() ??
                                      '0',
                                  Colors.orange,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
        ],
      ),
    ),
  );
}
