import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:tab_container/tab_container.dart';
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
                            ? "Total Verified Members : "
                            : "Total Unverified Members : ",
                        style: Configuration.primaryFont(
                          fontSize: 18.sp,
                          color: (controller?.index == 0 ?? false)
                              ? Colors.green
                              : Colors.red,
                          fontWeight: FontWeight.w600,
                          // Add other text styling as needed
                        ),
                      ),
                      TextSpan(
                        text: "${data.joinedByReferralMember.length}",
                        style: Configuration.primaryFont(
                          fontSize: 18.sp,
                          color: (controller?.index == 0 ?? false)
                              ? Colors.green
                              : Colors.red,
                          fontWeight: FontWeight.w800,
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
              return Stack(
                alignment: const Alignment(0.9, 0.9),
                children: [
                  Card(
                    child: Container(
                      decoration: BoxDecoration(
                        // color: const Color(0xffCCEAE0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      // padding: EdgeInsets.symmetric(
                      //   horizontal: 3.w,
                      //   vertical: 2.h,
                      // ),
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
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        length = 20;
                      });
                      fetchJoinedBy();
                    },
                    child: Text(
                      'View All',
                      style: Configuration.primaryFont(
                        fontSize: 12.sp,
                        color: const Color(0xff5C5C5C),
                        fontWeight: FontWeight.w600,
                      ),
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
    final response =
        await ApiService.instance.joinedByList(context, start, length);
    if (response.status == 1) {
      Provider.of<Repository>(context, listen: false)
          .setJoinedByReferralMember(response.data.data);
    }
    final response1 = await ApiService.instance
        .unverifiedJoinedByList(context, start, length);
    if (response1.status == 1) {
      Provider.of<Repository>(context, listen: false)
          .setUnverifiedJoinedByReferralMember(response1.data.data);
    }
  }
}
