// import 'package:auto_route/annotations.dart';
// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';
// import 'package:uppl/API/api_services.dart';
//
// import '../../Constants/configuration.dart';
// import '../../Models/analytics/top_performing_data_model.dart';
//
// @RoutePage()
// class TopPerformingDataScreen extends StatefulWidget {
//   const TopPerformingDataScreen({Key? key, required this.type})
//       : super(key: key);
//   final String type;
//
//   @override
//   State<TopPerformingDataScreen> createState() =>
//       _TopPerformingDataScreenState();
// }
//
// class _TopPerformingDataScreenState extends State<TopPerformingDataScreen> {
//   final List<TopPerformingData> _data = [];
//   bool _isLoading = false;
//   int _currentPage = 1;
//   int _totalPages = 1;
//   int _recordsTotal = 0;
//   int _recordsFiltered = 0;
//   String? _lastFetchedType;
//   int? _lastFetchedPage;
//
//   @override
//   void initState() {
//     super.initState();
//     _loadInitialData();
//   }
//
//   Future<void> _loadInitialData() async {
//     await _fetchData();
//   }
//
//   Future<void> _fetchData() async {
//     if (_isLoading) return;
//
//     if (_lastFetchedType == widget.type && _lastFetchedPage == _currentPage) {
//       return;
//     }
//
//     setState(() => _isLoading = true);
//
//     // Start from 0 and increment by 10 for each page
//     final int start = (_currentPage - 1) * 10;
//     // Length starts at 10 and increments by 10
//     final int length = 10 * _currentPage;
//
//     final response =
//     await ApiService.instance(context).generateTopPerformingDataAnalytics(
//       context,
//       1,
//       start,
//       length,
//       widget.type,
//     );
//
//     _lastFetchedType = widget.type;
//     _lastFetchedPage = _currentPage;
//
//     if (response.data?.isNotEmpty ?? false) {
//       setState(() {
//         if (_currentPage == 1 || _lastFetchedType != widget.type) {
//           _data.clear();
//         }
//         _data.addAll(response.data);
//         _recordsTotal = response.recordsTotal;
//         _recordsFiltered = response.recordsFiltered;
//         _totalPages = (_recordsFiltered / 10).ceil();
//       });
//     } else {
//       if (_data.isEmpty) {
//         _showMessage('No data available');
//       }
//     }
//
//     setState(() => _isLoading = false);
//   }
//
//   void _showMessage(String message) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text(message),
//         duration: const Duration(seconds: 3),
//         backgroundColor: Colors.red,
//       ),
//     );
//   }
//
//   Future<void> _refreshData() async {
//     _lastFetchedType = null;
//     _lastFetchedPage = null;
//     setState(() {
//       _data.clear();
//       _currentPage = 1;
//       _recordsTotal = 0;
//       _recordsFiltered = 0;
//     });
//     await _fetchData();
//   }
//
//   Future<void> _navigateToPage(int page) async {
//     if (page < 1 || page > _totalPages || page == _currentPage) return;
//     setState(() => _currentPage = page);
//     await _fetchData();
//   }
//
//   Widget _buildLoadingIndicator() {
//     return const Center(
//       child: Padding(
//         padding: EdgeInsets.all(8.0),
//         child: CircularProgressIndicator(),
//       ),
//     );
//   }
//
//   Widget _buildEmptyState() {
//     return const Center(
//       child: Text('No data available'),
//     );
//   }
//
//   Widget _buildPagination() {
//     return Container(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         children: [
//           Text(
//             'Showing ${(_currentPage - 1) * 10 + 1} to ${_currentPage * 10 > _recordsFiltered ? _recordsFiltered : _currentPage * 10} of $_recordsFiltered entries',
//             style: const TextStyle(fontSize: 14),
//           ),
//           const SizedBox(height: 8),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               IconButton(
//                 icon: const Icon(Icons.arrow_back_ios),
//                 onPressed: _currentPage > 1
//                     ? () {
//                   setState(() {
//                     _currentPage = _currentPage - 1;
//                   });
//                   _navigateToPage(_currentPage);
//                 }
//                     : null,
//               ),
//               Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                 child: Text(
//                   'Page $_currentPage of $_totalPages',
//                   style: const TextStyle(fontSize: 16),
//                 ),
//               ),
//               IconButton(
//                 icon: const Icon(Icons.arrow_forward_ios),
//                 onPressed: _currentPage < _totalPages
//                     ? () {
//                   setState(() {
//                     _currentPage = _currentPage + 1;
//                     _navigateToPage(_currentPage);
//                   });
//                 }
//                     : null,
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildDataItem(TopPerformingData item) {
//     return Card(
//       color: Colors.white,
//       margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
//       elevation: 2,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Badge(
//                   label: Text('#${item.slno}'),
//                   backgroundColor: Colors.blue,
//                 ),
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                     child: Text(
//                       item.name ?? "",
//                       style: Theme.of(context).textTheme.titleMedium?.copyWith(
//                         fontWeight: FontWeight.bold,
//                       ),
//                       textAlign: TextAlign.end,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 12),
//             ListTile(
//               contentPadding: EdgeInsets.zero,
//               leading: const CircleAvatar(
//                 child: Icon(Icons.person),
//               ),
//               title: Text(
//                 item.name ?? "N/A",
//                 style: Theme.of(context).textTheme.bodyLarge,
//               ),
//               subtitle: Text(
//                 'Representative',
//                 style: Theme.of(context).textTheme.bodySmall,
//               ),
//             ),
//             const Divider(),
//             IntrinsicHeight(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   _buildStatColumn(
//                       'Total\nMembers', item.memberCount.toString()),
//                   const VerticalDivider(),
//                   _buildStatColumn('Verified', item.verifiedMemberCount ?? "0"),
//                   const VerticalDivider(),
//                   _buildStatColumn(
//                       'Non-Verified', item.nonVerifiedMemberCount ?? "0"),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildStatColumn(String label, String value) {
//     return Column(
//       children: [
//         SizedBox(
//           height: 5.h,
//           child: Center(
//             child: Text(
//               label,
//               style: const TextStyle(
//                 fontSize: 12,
//                 color: Colors.grey,
//               ),
//               textAlign: TextAlign.center,
//             ),
//           ),
//         ),
//         const SizedBox(height: 4),
//         Text(
//           value,
//           style: const TextStyle(
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ],
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Configuration.homeBgColor,
//       appBar: AppBar(
//         title: Text(widget.type
//             .replaceFirst('worst', 'Worst')
//             .replaceFirst('top', 'Top')
//             .replaceFirst('Primary', ' Primary')
//             .replaceFirst('Booth', ' Booth')
//             .replaceAll(RegExp(r'(?<!^)(?=[A-Z])'), ' ')),
//       ),
//       body: RefreshIndicator(
//         onRefresh: _refreshData,
//         child: Column(
//           children: [
//             Expanded(
//               child: _data.isEmpty && !_isLoading
//                   ? _buildEmptyState()
//                   : ListView.builder(
//                 itemCount: _data.length + (_isLoading ? 1 : 0),
//                 itemBuilder: (context, index) {
//                   if (index == _data.length) {
//                     return _buildLoadingIndicator();
//                   }
//                   return _buildDataItem(_data[index]);
//                 },
//               ),
//             ),
//             _buildPagination(),
//           ],
//         ),
//       ),
//     );
//   }
// }
