import 'dart:io';
import 'dart:typed_data';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:sizer/sizer.dart';
import 'package:uppl/Helper/toast.dart';

import '../../../Constants/assets.dart';
import '../../../Constants/configuration.dart';

class MembershipCard extends StatefulWidget {
  const MembershipCard({
    super.key,
    required this.name,
    required this.district,
    required this.photo,
    required this.memberId,
    required this.joiningDate,
  });

  final String name, district, photo, memberId, joiningDate;

  @override
  State<MembershipCard> createState() => _MembershipCardState();
}

class _MembershipCardState extends State<MembershipCard> {
  Uint8List? _imageFile;
  ScreenshotController screenshotController = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Configuration.homeBgColor,
      child: Column(
        children: [
          Screenshot(
            controller: screenshotController,
            child: Container(
              color: Configuration.homeBgColor,
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
                                      image: DecorationImage(
                                          image: CachedNetworkImageProvider(
                                            widget.photo ?? "",
                                          ),
                                          fit: BoxFit.fill),
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
                    height: 13.h,
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
                              ": ${widget.name}",
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
                              ": ${widget.district}",
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
                              ": ${widget.memberId}",
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
                            Column(
                              children: [
                                SizedBox(
                                  width: 30.w,
                                  child: Text(
                                    widget.joiningDate,
                                    style: Configuration.primaryFont(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                ),
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
                              ],
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
        ],
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
