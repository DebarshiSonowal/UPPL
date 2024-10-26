import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:sizer/sizer.dart';
import 'package:uppl/Constants/configuration.dart';

import '../../Constants/assets.dart';
import '../../Constants/routes.dart';
import '../CommonWidgets/custom_nav_drawer.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Configuration.appBar,
      drawer: const CustomNavDrawer(),
      backgroundColor: Configuration.homeBgColor,
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(
          top: 2.h,
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 5.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Configuration.primaryColor,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.black,
                          ),
                        ),
                        height: 22.w,
                        width: 22.w,
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Text(
                        "Membership ID: 87485869",
                        style: Configuration.primaryFont(
                          fontSize: 11.sp,
                          color: Colors.black,
                          // fontWeight: FontWeight.bold,
                          // Add other text styling as needed
                        ),
                      ),
                      Text(
                        "Date of Joining: 01-Oct-2024",
                        style: Configuration.primaryFont(
                          fontSize: 11.sp,
                          color: Colors.black,
                          // fontWeight: FontWeight.bold,
                          // Add other text styling as needed
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Hello",
                          style: Configuration.primaryFont(
                            fontSize: 15.sp,
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                            // Add other text styling as needed
                          ),
                        ),
                        Text(
                          "Rajesh Chauhan",
                          style: Configuration.primaryFont(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            // Add other text styling as needed
                          ),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        LinearProgressBar(
                          maxSteps: 6,
                          progressType: LinearProgressBar.progressTypeLinear, // Use Linear progress
                          currentStep: 4,
                          progressColor: Configuration.secondaryColor,
                          backgroundColor: Colors.red,
                          borderRadius: BorderRadius.circular(10), //  NEW
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        SizedBox(
                          height: 3.h,
                          width: 50.w,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Configuration.primaryColor,
                            ),
                            onPressed: () {
                              AutoRouter.of(context).pushNamed(
                                  CustomRoutes.completeProfileScreen);
                            },
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Complete Your Profile",
                                  style: Configuration.primaryFont(
                                    color: Colors.black,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 6.w,
              ),
              child: Divider(
                thickness: 0.2.w,
                color: Colors.black,
              ),
            ),
            Text(
              "UPPL Membership Card",
              style: Configuration.primaryFont(
                fontSize: 18.sp,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                // Add other text styling as needed
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    height: 15.h,
                    decoration: const BoxDecoration(
                      gradient: Configuration.membershipGradient,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 4.w,
                      vertical: 1.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          CustomAssets.logo, // Ensure this path is correct
                          width: 20.w,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(
                          width: 40.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "United People's Party Liberal (UPPL)",
                                style: Configuration.copyrightFont(
                                  fontSize: 16.sp,
                                  color: const Color(0xff254510),
                                  fontWeight: FontWeight.bold,
                                  // Add other text styling as needed
                                ),
                                maxLines: 3,
                              ),
                              Divider(
                                thickness: 0.2.w,
                                color: Colors.black,
                              ),
                              Text(
                                """HQ & P.O. Kokrajhar,\nBTR (Assam), Pin- 783370""",
                                style: Configuration.copyrightFont(
                                  fontSize: 12.sp,
                                  color: const Color(0xff254510),
                                  fontWeight: FontWeight.bold,
                                  // Add other text styling as needed
                                ),
                                maxLines: 3,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 25.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset(CustomAssets.qr),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey,
                                    ),
                                    height: 19.w,
                                    width: 17.w,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 12.5.h,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      horizontal: 4.w,
                      vertical: 0.5.h,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 0.3.h,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 30.w,
                              child: Text(
                                "Name",
                                style: Configuration.primaryFont(
                                  color: Configuration.subTitleColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              ":",
                              style: Configuration.primaryFont(
                                color: Configuration.subTitleColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 30.w,
                              child: Text(
                                "District",
                                style: Configuration.primaryFont(
                                  color: Configuration.subTitleColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              ":",
                              style: Configuration.primaryFont(
                                color: Configuration.subTitleColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 30.w,
                              child: Text(
                                "Membership ID",
                                style: Configuration.primaryFont(
                                  color: Configuration.subTitleColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              ":",
                              style: Configuration.primaryFont(
                                color: Configuration.subTitleColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 30.w,
                              child: Text(
                                "Date of Issue",
                                style: Configuration.primaryFont(
                                  color: Colors.black,
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 11.sp,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 30.w,
                              child: Column(
                                children: [
                                  Image.asset(
                                    CustomAssets.signature,
                                    scale: 1.5,
                                  ),
                                  Text(
                                    "Authorized Signature",
                                    style: Configuration.primaryFont(
                                      color: Colors.black,
                                      // fontWeight: FontWeight.bold,
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 60.w,
                              child: Divider(
                                color: const Color(0xffE6E405),
                                thickness: 0.5.w,
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
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Configuration.thirdColor,
              ),
              onPressed: () {},
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 4.w,
                ),
                child: const Icon(
                  Icons.download,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 6.w,
              ),
              child: Divider(
                thickness: 0.2.w,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              "Your Unique Referral Link",
              style: Configuration.primaryFont(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 17.sp,
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 4.w,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xffE7E4C6),
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 4.w,
                  vertical: 0.5.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Configuration.primaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 4.w,
                        vertical: 1.h,
                      ),
                      child: Center(
                        child: Text(
                          "Copy",
                          style: Configuration.primaryFont(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Configuration.bottomNavigationBar(context),
    );
  }
}
