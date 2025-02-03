import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svprogresshud/flutter_svprogresshud.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:tab_container/tab_container.dart';
import 'package:uppl/Helper/toast.dart';
import 'package:uppl/Repository/repository.dart';

import '../../API/api_services.dart';
import '../../Constants/configuration.dart';
import '../CommonWidgets/custom_nav_drawer.dart';
import 'Widgets/unverified_members_tab.dart';
import 'Widgets/verified_members_tab.dart';

@RoutePage()
class ViewListScreen extends StatefulWidget {
  const ViewListScreen({super.key});

  @override
  State<ViewListScreen> createState() => _ViewListScreenState();
}

class _ViewListScreenState extends State<ViewListScreen>
    with SingleTickerProviderStateMixin {
  int start = 0, length = 10;
  TabController? controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Configuration.homeBgColor,
      appBar: Configuration.appBar,
      drawer: const CustomNavDrawer(),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 3.w,
          vertical: 1.5.h,
        ),
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    AutoRouter.of(context).popForced();
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Configuration.thirdColor,
                    size: 20.sp,
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Consumer<Repository>(builder: (context, data, _) {
                  return RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: (controller?.index == 0 ?? false)
                            ? "Total Verified Members : ${data.joinedByReferralMember.length}"
                            : "Total Unverified Members : ${data.unverifiedJoinedByReferralMember.length}",
                        style: Configuration.primaryFont(
                          fontSize: 18.sp,
                          color: (controller?.index == 0 ?? false)
                              ? Colors.green
                              : Colors.red,
                          fontWeight: FontWeight.w600,
                          // Add other text styling as needed
                        ),
                      ),
                    ]),
                  );
                }),
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            Consumer<Repository>(builder: (context, data, _) {
              final itemsPerPage = 10;
              final totalItems = controller?.index == 0
                  ? data.joinedByReferralMember.length
                  : data.unverifiedJoinedByReferralMember.length;
              final totalPages = (totalItems / itemsPerPage).ceil();
              final currentPage = (start ~/ itemsPerPage) + 1;

              return Column(
                children: [
                  Card(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TabContainer(
                        controller: controller,
                        tabEdge: TabEdge.top,
                        tabsStart: 0.1,
                        tabsEnd: 0.9,
                        tabMaxLength: 100,
                        borderRadius: BorderRadius.circular(10),
                        tabBorderRadius: BorderRadius.circular(10),
                        childPadding: const EdgeInsets.all(20.0),
                        selectedTextStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        unselectedTextStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        colors: const [
                          Color(0xffCCEAE0),
                          Color(0xffFE9393),
                        ],
                        tabs: const [
                          Text('Verified Members'),
                          Text('Non Verified Members'),
                        ],
                        children: [
                          VerifiedMembersTab(rowSpacer: rowSpacer, data: data),
                          UnverifiedMembersTab(
                              rowSpacer: rowSpacer, data: data),
                        ],
                      ),
                    ),
                  ),
                  if (totalItems > 0)
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 2.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Icon(Icons.chevron_left),
                            onPressed: currentPage > 1
                                ? () {
                                    setState(() {
                                      start = (currentPage - 2) * itemsPerPage;
                                      length = itemsPerPage;
                                    });
                                    fetchJoinedBy();
                                  }
                                : null,
                          ),
                          for (int i = 1; i <= totalPages; i++)
                            if (i == 1 ||
                                i == totalPages ||
                                (i >= currentPage - 1 && i <= currentPage + 1))
                              Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 0.5.w),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: i == currentPage
                                        ? Configuration.thirdColor
                                        : Colors.grey[300],
                                    minimumSize: Size(8.w, 4.h),
                                  ),
                                  onPressed: i != currentPage
                                      ? () {
                                          setState(() {
                                            start = (i - 1) * itemsPerPage;
                                            length = itemsPerPage;
                                          });
                                          fetchJoinedBy();
                                        }
                                      : null,
                                  child: Text(
                                    '$i',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              )
                            else if (i == currentPage - 2 ||
                                i == currentPage + 2)
                              Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 0.5.w),
                                child: Text('...'),
                              ),
                          IconButton(
                            icon: const Icon(Icons.chevron_right),
                            onPressed: currentPage < totalPages
                                ? () {
                                    setState(() {
                                      start = currentPage * itemsPerPage;
                                      length = itemsPerPage;
                                    });
                                    fetchJoinedBy();
                                  }
                                : null,
                          ),
                        ],
                      ),
                    ),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      controller = TabController(length: 2, vsync: this);
      setState(() {});
      controller?.addListener(() {
        setState(() {});
      });
    });
  }

  var rowSpacer = TableRow(children: [
    SizedBox(
      height: 1.5.h,
    ),
    SizedBox(
      height: 1.5.h,
    ),
    SizedBox(
      height: 1.5.h,
    ),
    SizedBox(
      height: 1.5.h,
    ),
  ]);
  var rowSpacer2 = TableRow(children: [
    SizedBox(
      height: 1.h,
    ),
    SizedBox(
      height: 1.h,
    ),
    SizedBox(
      height: 1.h,
    ),
    SizedBox(
      height: 1.h,
    ),
  ]);

  void fetchJoinedBy() async {
    SVProgressHUD.dismiss();
    SVProgressHUD.show();
    setState(() {
      length = length + 10;
    });
    try {
      if (controller?.index == 0 ?? false) {
        final response = await ApiService.instance(context)
            .joinedByList(context, start, length);
        if (response.status == 1) {
          Provider.of<Repository>(context, listen: false)
              .setJoinedByReferralMember(response.data!.data);
          CustomToast.showSuccessToast(
              context, "Fetched Data", "Fetched All Available Data");
        } else {
          CustomToast.showFailureToast(
              context, "Something Went Wrong", response.message);
        }
      } else {
        final response1 = await ApiService.instance(context)
            .unverifiedJoinedByList(context, start, length);
        if (response1.status == 1) {
          Provider.of<Repository>(context, listen: false)
              .setUnverifiedJoinedByReferralMember(response1.data!.data);
          CustomToast.showSuccessToast(
              context, "Fetched Data", "Fetched All Available Data");
        } else {
          CustomToast.showFailureToast(
              context, "Something Went Wrong", response1.message);
        }
      }
    } catch (e) {
      print(e);
    }
    SVProgressHUD.dismiss();
  }
}
