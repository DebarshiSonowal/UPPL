import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:sizer/sizer.dart';

import '../../../Constants/assets.dart';
import '../../../Constants/configuration.dart';
import '../../../Repository/repository.dart';

class SavedMembershipCard extends StatelessWidget {
  const SavedMembershipCard({
    super.key,
    required this.screenshotController,
  });

  final ScreenshotController screenshotController;

  @override
  Widget build(BuildContext context) {
    return Screenshot(
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
                            Consumer<Repository>(builder: (context, data, _) {
                              return Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey,
                                  image: DecorationImage(
                                    image: CachedNetworkImageProvider(data
                                            .registrationData!
                                            .membershipCardData!
                                            .photo ??
                                        ""),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                height: 19.w,
                                width: 17.w,
                              );
                            })
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Consumer<Repository>(builder: (context, data, _) {
              return Container(
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
                          ": ${data.registrationData?.membershipCardData?.name}",
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
                          ": ${data.registrationData?.membershipCardData?.district}",
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
                          ": ${data.registrationData?.membershipCardData?.membershipNo}",
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
                                data?.registrationData?.membershipCardData
                                        ?.joiningDate ??
                                    "",
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
              );
            }),
          ],
        ),
      ),
    );
  }
}
