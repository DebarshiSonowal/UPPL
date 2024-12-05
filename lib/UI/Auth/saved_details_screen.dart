import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sizer/sizer.dart';

import '../../Constants/configuration.dart';
import '../../Constants/routes.dart';
import '../../Helper/toast.dart';
import '../../Repository/repository.dart';
import '../AddMember/Widgets/saved_member_details_card.dart';

@RoutePage()
class SavedDetailsScreen extends StatefulWidget {
  const SavedDetailsScreen({super.key});

  @override
  State<SavedDetailsScreen> createState() => _SavedDetailsScreenState();
}

class _SavedDetailsScreenState extends State<SavedDetailsScreen> {
  ScreenshotController screenshotController = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Configuration.homeBgColor,
      appBar: Configuration.appBar,
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
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
                              text: "You are now a UPPL member",
                              style: Configuration.primaryFont(
                                fontSize: 16.sp,
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
                  "Date of Joining: ${data.registrationData?.membershipCardData?.joiningDate}",
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
              SizedBox(
                height: 1.h,
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
                      screenshotController
                          .capture()
                          .then((Uint8List? imageFile) {
                        if (imageFile != null) {
                          final filePath =
                              '${Directory.systemTemp.path}/membership_card.png';
                          final file = File(filePath);
                          file.writeAsBytes(imageFile).then((_) {
                            final xFile = XFile(filePath);
                            Share.shareXFiles(
                              [xFile],
                              text: 'Check out my UPPL membership!',
                              subject: 'UPPL Membership Referral',
                            );
                          }).catchError((error) {
                            CustomToast.showFailureToast(
                                context,
                                "File Write Error",
                                "An error occurred: $error");
                          });
                        } else {
                          CustomToast.showFailureToast(context,
                              "Capture Failed", "Could not capture image.");
                        }
                      }).catchError((error) {
                        CustomToast.showFailureToast(context, "Capture Error",
                            "An error occurred: $error");
                      });
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
                width: 80.w,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Configuration.primaryColor,
                  ),
                  onPressed: () {
                    AutoRouter.of(context).popUntilRoot();
                    AutoRouter.of(context).pushNamed(CustomRoutes.splashScreen);
                  },
                  child: Text(
                    "Done",
                    style: Configuration.primaryFont(
                      fontSize: 15.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      // Add other text styling as needed
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              GestureDetector(
                onTap: () {
                  AutoRouter.of(context)
                      .pushNamed(CustomRoutes.addMemberScreen);
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
    );
  }

  void showImage() async {
    final directory = (await getApplicationSupportDirectory())
        .path; // Use getApplicationSupportDirectory for iOS
    String fileName = "${DateTime.now().microsecondsSinceEpoch}.png";
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
      debugPrint("File exists: $fileExists");

      if (fileExists) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text("Membership Card Saved Successfully"),
            action: SnackBarAction(
              label: 'View',
              onPressed: () {
                // Code to view the file
                // This is just a template for how the action might be handled
                OpenFile.open(filePath);
              },
            ),
          ),
        );
      } else {
        CustomToast.showFailureToast(
            context, "Download Failed", "File not saved. Please try again.");
      }
    });
  }
}
