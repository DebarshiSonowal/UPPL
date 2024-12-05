import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sizer/sizer.dart';
import 'package:uppl/Repository/repository.dart';

import '../../Constants/configuration.dart';
import '../../Constants/routes.dart';
import '../../Helper/toast.dart';
import 'Widgets/saved_member_details_card.dart';

@RoutePage()
class SaveMemberDetailsScreen extends StatefulWidget {
  const SaveMemberDetailsScreen({super.key});

  @override
  State<SaveMemberDetailsScreen> createState() =>
      _SaveMemberDetailsScreenState();
}

class _SaveMemberDetailsScreenState extends State<SaveMemberDetailsScreen> {
  ScreenshotController screenshotController = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Configuration.homeBgColor,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Configuration.primaryColor,
        leading: GestureDetector(
          onTap: () {
            AutoRouter.of(context).popUntilRoot();
            AutoRouter.of(context).pushNamed(CustomRoutes.homeScreen);
          },
          child: Icon(
            Icons.arrow_back_ios,
            size: 23.sp,
          ),
        ),
        title: SizedBox(
          width: 50.w,
          height: 5.h,
          child: Text(
            "United People's Party Liberal (UPPL)",
            style: Configuration.primaryFont(
              fontSize: 15.sp,
              color: Colors.black87,
              fontWeight: FontWeight.bold,
              // Add other text styling as needed
            ),
            maxLines: 2,
          ),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
            size: 23.sp,
          ),
          SizedBox(
            width: 4.w,
          ),
          Icon(
            Icons.notifications,
            color: Colors.black,
            size: 23.sp,
          ),
          SizedBox(
            width: 4.w,
          ),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
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
              Consumer<Repository>(builder: (context, data, _) {
                return Text(
                  "Membership Number: ${data.registrationData?.membershipCardData?.membershipNo}",
                  style: Configuration.primaryFont(
                    fontSize: 13.sp,
                    color: Configuration.subTextColor,
                    fontWeight: FontWeight.bold,
                    // Add other text styling as needed
                  ),
                );
              }),
              SizedBox(
                height: 0.5.h,
              ),
              Consumer<Repository>(builder: (context, data, _) {
                return Text(
                  "Date of Joining: ${data.registrationData!.membershipCardData!.joiningDate}",
                  style: Configuration.primaryFont(
                    fontSize: 13.sp,
                    color: Configuration.subTextColor,
                    fontWeight: FontWeight.bold,
                    // Add other text styling as needed
                  ),
                );
              }),
              SizedBox(
                height: 1.h,
              ),
              SavedMembershipCard(
                screenshotController: screenshotController,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Configuration.thirdColor,
                ),
                onPressed: () {
                  showImage();
                },
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
              Consumer<Repository>(builder: (context, data, _) {
                return Padding(
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${data.registrationData?.membershipCardData?.referralLink}",
                          style: const TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Clipboard.setData(ClipboardData(
                                text: data.registrationData?.membershipCardData
                                        ?.referralLink ??
                                    ""));
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content:
                                    Text("Referral link copied to clipboard"),
                              ),
                            );
                          },
                          child: Container(
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
                        ),
                      ],
                    ),
                  ),
                );
              }),
              SizedBox(
                height: 1.h,
              ),
              Consumer<Repository>(builder: (context, data, _) {
                return RichText(
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
                        text:
                            " ${data.registrationData?.membershipCardData?.refCode}",
                        style: Configuration.primaryFont(
                          fontSize: 15.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          // Add other text styling as needed
                        ),
                      ),
                    ],
                  ),
                );
              }),
              SizedBox(
                height: 0.5.h,
              ),
              Consumer<Repository>(builder: (context, data, _) {
                return SizedBox(
                  width: 80.w,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Configuration.secondaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {
                      Share.share(
                        'Check out my UPPL membership! Join using my referral link: ${data.registrationData?.membershipCardData?.referralLink}',
                        subject: 'UPPL Membership Referral',
                      );
                    },
                    child: Text(
                      "Share",
                      style: Configuration.primaryFont(
                        fontSize: 15.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              }),
              SizedBox(
                height: 0.5.h,
              ),
              SizedBox(
                height: 0.5.h,
              ),
              // GestureDetector(
              //   onTap: () {
              //     AutoRouter.of(context)
              //         .pushNamed(CustomRoutes.addMemberScreen);
              //   },
              //   child: Container(
              //     decoration: const BoxDecoration(
              //       color: Configuration.secondaryColor,
              //     ),
              //     width: double.infinity,
              //     height: 6.h,
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         const Icon(
              //           Icons.person_add_alt_1,
              //           color: Colors.white,
              //         ),
              //         SizedBox(
              //           width: 5.w,
              //         ),
              //         Text(
              //           "Add a family member of",
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
              // SizedBox(
              //   height: 0.5.h,
              // ),
              GestureDetector(
                onTap: () {
                  AutoRouter.of(context)
                      .popUntilRouteWithName(CustomRoutes.addMemberScreen);
                },
                child: Container(
                  decoration: const BoxDecoration(
                    color: Configuration.thirdColor,
                  ),
                  width: double.infinity,
                  height: 6.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.person_add_alt_1,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        "Add a new member",
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
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: Configuration.bottomNavigationBar(context),
    );
  }

  void showImage() async {
    final directory = (await getApplicationSupportDirectory())
        .path; // Use getApplicationSupportDirectory for iOS
    String fileName = "${DateTime.now().microsecondsSinceEpoch}";
    String path = directory;
    debugPrint("Image Will be saved $directory");
    screenshotController
        .captureAndSave(path, // Set path where screenshot will be saved
            fileName: fileName)
        .catchError((err) {
      debugPrint("Image Saving $directory $err");
      CustomToast.showFailureToast(context, "Something Went Wrong",
          "Unable to save the image. Please Check the permissions");
    }).then((v) {
      final filePath = "$directory/$fileName";
      final fileExists = File(filePath).existsSync();
      print("File exists: $fileExists");
      CustomToast.showSuccessToast(context, "Downloaded Successfully",
          "Membership Card Saved Successfully");
    });
  }
}
