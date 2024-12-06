import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../API/api_services.dart';
import '../../Constants/configuration.dart';
import '../../Constants/routes.dart';
import '../../Models/Membership/membership_card_model.dart';
import '../../Navigation/Router/app_router.dart';
import '../../Repository/repository.dart';
import '../CommonWidgets/custom_nav_drawer.dart';
import '../Profile/Widgets/membership_card.dart';

@RoutePage()
class MemberDataScreen extends StatefulWidget {
  const MemberDataScreen({super.key, required this.index});

  final int index;

  @override
  State<MemberDataScreen> createState() => _MemberDataScreenState();
}

class _MemberDataScreenState extends State<MemberDataScreen> {
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
            Consumer<Repository>(builder: (context, data, _) {
              return Padding(
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
                            image: DecorationImage(
                              image: CachedNetworkImageProvider(
                                  data.memberData?.membershipCardData.photo ??
                                      ""),
                            ),
                          ),
                          height: 22.w,
                          width: 22.w,
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          "Membership ID: ${data.memberData?.membershipCardData.membershipNo}",
                          style: Configuration.primaryFont(
                            fontSize: 11.sp,
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                            // Add other text styling as needed
                          ),
                        ),
                        Text(
                          "Date of Joining: ${data.memberData?.membershipCardData.joiningDate}",
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
                          Consumer<Repository>(builder: (context, data, _) {
                            return Text(
                              "${data.memberData?.membershipCardData.name}",
                              style: Configuration.primaryFont(
                                fontSize: 16.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                // Add other text styling as needed
                              ),
                            );
                          }),
                          SizedBox(
                            height: 3.h,
                          ),
                          LinearProgressBar(
                            maxSteps: 6,
                            progressType: LinearProgressBar.progressTypeLinear,
                            // Use Linear progress
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
              );
            }),
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
            Consumer<Repository>(builder: (context, data, _) {
              var current = data.memberData?.membershipCardData;
              return MembershipCard(
                name: current?.name ?? "N/A",
                district: current?.district ?? "N/A",
                photo: current?.photo ?? "",
                memberId: "${data.memberData?.personalDetails.memberId}",
                joiningDate: current?.joiningDate ?? "",
              );
            }),
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
            Consumer<Repository>(builder: (context, data, _) {
              return Padding(
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 60.w,
                        child: Text(
                          "${data.memberData?.membershipCardData.referralLink}",
                          style: Configuration.primaryFont(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Clipboard.setData(ClipboardData(
                              text: data.memberData?.membershipCardData
                                      .referralLink ??
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
          ],
        ),
      ),
      bottomNavigationBar: Configuration.bottomNavigationBar(context),
    );
  }

  void showImage() async {
    final profile = Provider.of<Repository>(context, listen: false).memberData;
    final response = await ApiService.instance(context)
        .getMembershipCard(profile!.personalDetails.mobileNo, context);

    response.when(
      success: (status, message, data, code) {
        if (status == 1 && data!.isNotEmpty) {
          final dataEntry = data.first;
          showImageDialog(
              dataEntry); // Pass `dataEntry` directly without casting
        }
      },
      error: (status, message, errors, code) {
        print("Error: $message");
      },
    );
  }

  void showImageDialog(MembershipCardInfoData data) {
    debugPrint("showImageDialog ${data.file}");
    AutoRouter.of(context).push(CustomImageViewerRoute(url: data.file!));
  }
}
