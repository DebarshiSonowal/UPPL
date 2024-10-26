import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

import '../../Constants/configuration.dart';
import '../../Constants/routes.dart';
import '../CommonWidgets/custom_nav_drawer.dart';
import '../CommonWidgets/pie_chart.dart';

@RoutePage()
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Configuration.homeBgColor,
      appBar: Configuration.appBar,
      drawer: const CustomNavDrawer(),
      body: Container(
        padding: EdgeInsets.only(
          top: 1.h,
        ),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 6.w,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Configuration.primaryColor,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  height: 25.w,
                  width: 25.w,
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                "Rajesh Chauhan",
                style: Configuration.primaryFont(
                  fontSize: 17.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  // Add other text styling as needed
                ),
              ),
              SizedBox(
                height: 0.3.h,
              ),
              Text(
                "My Rank : 10",
                style: Configuration.primaryFont(
                  fontSize: 15.sp,
                  color: Configuration.thirdColor,
                  fontWeight: FontWeight.bold,
                  // Add other text styling as needed
                ),
              ),
              SizedBox(
                height: 0.3.h,
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "My Referral Code: ",
                    style: Configuration.primaryFont(
                      fontSize: 15.sp,
                      color: Configuration.subTextColor,
                      fontWeight: FontWeight.bold,
                      // Add other text styling as needed
                    ),
                  ),
                  TextSpan(
                    text: "DDCCBX",
                    style: Configuration.primaryFont(
                      fontSize: 15.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      // Add other text styling as needed
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 0.5.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 5.w,
                ),
                child: const Divider(
                  color: Configuration.primaryColor,
                ),
              ),
              SizedBox(
                height: 0.5.h,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  vertical: 1.5.h,
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: 4.w,
                ),
                decoration: BoxDecoration(
                  color: Configuration.thirdColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text(
                      "10000",
                      style: Configuration.primaryFont(
                        fontSize: 22.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        // Add other text styling as needed
                      ),
                    ),
                    Text(
                      "Total Referred Members",
                      style: Configuration.primaryFont(
                        fontSize: 16.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        // Add other text styling as needed
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 0.5.h,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  vertical: 1.5.h,
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: 4.w,
                ),
                decoration: BoxDecoration(
                  color: Configuration.thirdColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text(
                      "View List",
                      style: Configuration.primaryFont(
                        fontSize: 22.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        // Add other text styling as needed
                      ),
                    ),
                    Text(
                      "View Referred Members",
                      style: Configuration.primaryFont(
                        fontSize: 16.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        // Add other text styling as needed
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xffE8F4FF),
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: 4.w,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 4.w,
                  vertical: 2.h,
                ),
                child: Column(
                  children: [
                    Text(
                      "Referred Members Demographic",
                      style: Configuration.primaryFont(
                        fontSize: 17.5.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        // Add other text styling as needed
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    SizedBox(
                      height: 20.h,
                      width: double.infinity,
                      child: const PieChartSample2(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "Family Members",
                style: Configuration.primaryFont(
                  fontSize: 17.5.sp,
                  color: Configuration.thirdColor,
                  fontWeight: FontWeight.bold,
                  // Add other text styling as needed
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 42.w,
                      child: Text(
                        "Mr Rahul Boro",
                        style: Configuration.primaryFont(
                          fontSize: 17.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          // Add other text styling as needed
                        ),
                      ),
                    ),
                    Text(
                      "21 Years",
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
              SizedBox(
                height: 1.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 42.w,
                      child: Text(
                        "Mrs Rimjim Boro",
                        style: Configuration.primaryFont(
                          fontSize: 17.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          // Add other text styling as needed
                        ),
                      ),
                    ),
                    Text(
                      "69 Years",
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
              SizedBox(
                height: 1.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 42.w,
                      child: Text(
                        "Miss Tina Boro",
                        style: Configuration.primaryFont(
                          fontSize: 17.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          // Add other text styling as needed
                        ),
                      ),
                    ),
                    Text(
                      "21 Years",
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
              SizedBox(
                height: 3.h,
              ),
              GestureDetector(
                onTap: () {
                  // AutoRouter.of(context).pushNamed(CustomRoutes.addMemberScreen);
                },
                child: Container(
                  decoration: const BoxDecoration(
                    color: Configuration.thirdColor,
                  ),
                  width: double.infinity,
                  height: 8.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        FontAwesomeIcons.download,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        "Download Family Membership Card",
                        style: Configuration.primaryFont(
                          fontSize: 15.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          // Add other text styling as needed
                        ),
                      ),
                    ],
                  ),
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
