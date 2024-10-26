import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

import '../../Constants/assets.dart';
import '../../Constants/configuration.dart';
import '../../Constants/routes.dart';

@RoutePage()
class SaveMemberDetailsScreen extends StatefulWidget {
  const SaveMemberDetailsScreen({super.key});

  @override
  State<SaveMemberDetailsScreen> createState() => _SaveMemberDetailsScreenState();
}

class _SaveMemberDetailsScreenState extends State<SaveMemberDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Configuration.homeBgColor,
      appBar: Configuration.appBar,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 1.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 6.w,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.check_circle_outline,
                    size: 30.sp,
                    color: Configuration.primaryColor,
                  ),
                  SizedBox(
                    height: 5.h,
                    width: 70.w,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Congratulations!",
                            style: Configuration.primaryFont(
                              fontSize: 15.sp,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              // Add other text styling as needed
                            ),
                          ),
                          const TextSpan(text: "\n"),
                          TextSpan(
                            text: "A new member added to UPPL family",
                            style: Configuration.primaryFont(
                              fontSize: 15.sp,
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              // Add other text styling as needed
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
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
                fontSize: 21.sp,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                // Add other text styling as needed
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              "Membership Number: 7002819230",
              style: Configuration.primaryFont(
                fontSize: 13.sp,
                color: Configuration.subTextColor,
                fontWeight: FontWeight.bold,
                // Add other text styling as needed
              ),
            ),
            SizedBox(
              height: 0.5.h,
            ),
            Text(
              "Date of Joining: ${DateFormat("dd MMM, yyyy").format(DateTime.now())}",
              style: Configuration.primaryFont(
                fontSize: 13.sp,
                color: Configuration.subTextColor,
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
                horizontal: 5.w,
              ),
              child: Divider(
                color: Colors.black,
                thickness: 0.15.w,
              ),
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
                  color: Colors.white,
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
            SizedBox(
              height: 1.h,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Your Referal Code:",
                    style: Configuration.primaryFont(
                      fontSize: 15.sp,
                      color: Configuration.subTextColor,
                      fontWeight: FontWeight.bold,
                      // Add other text styling as needed
                    ),
                  ),
                  TextSpan(
                    text: " DDCCBX",
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
              height: 0.5.h,
            ),
            SizedBox(
              width: 80.w,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Configuration.secondaryColor,
                ),
                onPressed: () {},
                child: Text(
                  "Share",
                  style: Configuration.primaryFont(
                    fontSize: 15.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    // Add other text styling as needed
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 0.5.h,
            ),
            // GestureDetector(
            //   onTap: (){
            //     AutoRouter.of(context).pushNamed(CustomRoutes.addMemberScreen);
            //   },
            //   child: Container(
            //     decoration: const BoxDecoration(
            //       color: Configuration.thirdColor,
            //     ),
            //     width: double.infinity,
            //     height: 6.h,
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         const Icon(Icons.person_add_alt_1,color: Colors.white,),
            //         SizedBox(
            //           width: 5.w,
            //         ),
            //         Text(
            //           "Add a new member",
            //           style: Configuration.primaryFont(
            //             fontSize: 16.sp,
            //             color: Colors.white,
            //             fontWeight: FontWeight.bold,
            //             // Add other text styling as needed
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: Configuration.bottomNavigationBar(context),
    );
  }
}
