import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:readmore/readmore.dart';
import 'package:sizer/sizer.dart';
import 'package:uppl/Constants/configuration.dart';
import 'package:uppl/Constants/routes.dart';
import 'package:uppl/Navigation/Router/app_router.dart';

import '../../Constants/assets.dart';
import '../CommonWidgets/custom_nav_drawer.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Configuration.homeBgColor,
      appBar: Configuration.appBar,
      drawer: const CustomNavDrawer(),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  CustomAssets.banner,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Configuration.primaryColor,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 2.w,
                  vertical: 2.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        width: 30.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                          vertical: 2.h,
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.dashboard,
                              size: 35.sp,
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Text(
                              "Dashboard",
                              style: Configuration.primaryFont(
                                fontSize: 15.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                // Add other text styling as needed
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        width: 30.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                          vertical: 2.h,
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.people,
                              size: 35.sp,
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Text(
                              "Add Member",
                              style: Configuration.primaryFont(
                                fontSize: 15.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                // Add other text styling as needed
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        width: 30.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.w,
                          vertical: 2.h,
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.person,
                              size: 35.sp,
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Text(
                              "Your Profile",
                              style: Configuration.primaryFont(
                                fontSize: 15.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                // Add other text styling as needed
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 6.w,
                  vertical: 1.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcoming Events",
                      style: Configuration.primaryFont(
                        fontSize: 17.sp,
                        color: Configuration.subTextColor,
                        fontWeight: FontWeight.bold,
                        // Add other text styling as needed
                      ),
                    ),
                    SizedBox(
                      width: 22.w,
                      height: 3.h,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Configuration.thirdColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "View All",
                          style: Configuration.primaryFont(
                            fontSize: 13.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            // Add other text styling as needed
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 3.w,
                ),
                decoration: BoxDecoration(
                  color: Configuration.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 3.w,
                  vertical: 2.h,
                ),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 30.h,
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      "UPPL MEMBERSHIP CAMPAIGN",
                      style: Configuration.primaryFont(
                        fontSize: 17.sp,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        // Add other text styling as needed
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    SizedBox(
                      width: 70.w,
                      child: Configuration.rectangleButton(
                        onPressed: () {},
                        text: '30 October - 1 January',
                        bgColor: Configuration.thirdColor,
                        fontSize: 15.sp,
                        fontColor: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 3.w,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(FontAwesomeIcons.xTwitter),
                          SizedBox(
                            width: 2.w,
                          ),
                          const Icon(FontAwesomeIcons.instagram),
                          SizedBox(
                            width: 2.w,
                          ),
                          const Icon(FontAwesomeIcons.facebook),
                          const Spacer(),
                          const Icon(FontAwesomeIcons.download),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  // horizontal: 5.w,
                  vertical: 2.h,
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: 3.w,
                ),
                decoration: BoxDecoration(
                  color: Configuration.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.w,
                        // vertical: 2.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "NEWS AND ARTICLES",
                            style: Configuration.primaryFont(
                              fontSize: 17.sp,
                              color: Configuration.subTextColor,
                              fontWeight: FontWeight.bold,
                              // Add other text styling as needed
                            ),
                          ),
                          SizedBox(
                            width: 22.w,
                            height: 3.h,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Configuration.thirdColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "View All",
                                style: Configuration.primaryFont(
                                  fontSize: 13.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  // Add other text styling as needed
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    SizedBox(
                      height: 30.h,
                      width: double.infinity,
                      child: ListView.separated(
                        padding: EdgeInsets.symmetric(
                          horizontal: 3.w,
                          // vertical: 2.h,
                        ),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              width: 59.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 4.w,
                                vertical: 1.5.h,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        height: 15.h,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Configuration.thirdColor,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 4.w,
                                          vertical: 0.5.h,
                                        ),
                                        child: Text(
                                          "Today",
                                          style: Configuration.primaryFont(
                                            fontSize: 14.sp,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            // Add other text styling as needed
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 0.5.h,
                                  ),
                                  Text(
                                    "Big Boost to UPPL Ahead of Sidli Bypolls, 1174 People ...",
                                    maxLines: 2,
                                    style: Configuration.primaryFont(
                                      fontSize: 14.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      // Add other text styling as needed
                                    ),
                                  ),
                                  SizedBox(
                                    height: 0.5.h,
                                  ),
                                  ReadMoreText(
                                    'The UPPL will contest the Sidli seat with the support of its allies, the Bharatiya Janata Party (BJP) and the Asom Gana Parishad (AGP).',
                                    trimMode: TrimMode.Line,
                                    trimLines: 3,
                                    colorClickableText: Colors.pink,
                                    trimCollapsedText: 'Show more',
                                    trimExpandedText: 'Show less',
                                    moreStyle: Configuration.primaryFont(
                                      fontSize: 13.sp,
                                      color: Configuration.secondaryColor,
                                      fontWeight: FontWeight.bold,
                                      // Add other text styling as needed
                                    ),
                                    style: Configuration.primaryFont(
                                      fontSize: 12.sp,
                                      color: Colors.black,
                                      // fontWeight: FontWeight.bold,
                                      // Add other text styling as needed
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: 2.w,
                          );
                        },
                        itemCount: 4,
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(
              //   height: 2.h,
              // ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 6.w,
                  vertical: 1.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent Highlights",
                      style: Configuration.primaryFont(
                        fontSize: 17.sp,
                        color: Configuration.thirdColor,
                        fontWeight: FontWeight.bold,
                        // Add other text styling as needed
                      ),
                    ),
                    SizedBox(
                      width: 22.w,
                      height: 3.h,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Configuration.thirdColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "View All",
                          style: Configuration.primaryFont(
                            fontSize: 13.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            // Add other text styling as needed
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              SizedBox(
                height: 27.h,
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(
                    horizontal: 2.w,
                  ),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        width: 40.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: Configuration.recentHighlightGradient,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "WOMEN",
                              style: Configuration.primaryFont(
                                fontSize: 20.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                // Add other text styling as needed
                              ),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 1.w,
                    );
                  },
                  itemCount: 4,
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Configuration.thirdColor,
                ),
                width: double.infinity,
                // height: 35.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 4.w,
                  vertical: 2.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Media",
                      style: Configuration.primaryFont(
                        fontSize: 18.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        // Add other text styling as needed
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    SizedBox(
                      height: 22.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 45.w,
                            child: Column(
                              children: [
                                Container(
                                  height: 18.h,
                                  width: 50.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Photos",
                                      style: Configuration.primaryFont(
                                        fontSize: 14.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        // Add other text styling as needed
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20.w,
                                      height: 2.h,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Configuration.primaryColor,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          "View All",
                                          style: Configuration.primaryFont(
                                            fontSize: 12.sp,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            // Add other text styling as needed
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 45.w,
                            child: Column(
                              children: [
                                Container(
                                  height: 18.h,
                                  width: 50.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Videos",
                                      style: Configuration.primaryFont(
                                        fontSize: 14.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        // Add other text styling as needed
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20.w,
                                      height: 2.h,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Configuration.primaryColor,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          "View All",
                                          style: Configuration.primaryFont(
                                            fontSize: 12.sp,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            // Add other text styling as needed
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 20.h,
                decoration: const BoxDecoration(
                  color: Configuration.primaryColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Configuration.secondaryColor,
                      ),
                      width: double.infinity,
                      height: 10.h,
                      child: Center(child: Configuration.copyrightColored),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Configuration.bottomNavigationBar(context),
    );
  }
}
