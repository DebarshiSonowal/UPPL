import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:uppl/Constants/routes.dart';
import 'package:uppl/Repository/repository.dart';

import '../../API/api_services.dart';
import '../../Constants/configuration.dart';
import '../../Helper/toast.dart';
import '../../Models/Member/member_details_model.dart';
import '../../Navigation/Router/app_router.dart';
import '../CommonWidgets/custom_nav_drawer.dart';
import '../CommonWidgets/pie_chart.dart';

@RoutePage()
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int start = 0, length = 10;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      fetchAudienceDemographic(context);
      fetchFamilyData(context);
      fetchJoinedBy();
      fetchProfileData(context);
      setState(() {
        Configuration.currentIndex = 2;
      });
    });
  }

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
                child: Consumer<Repository>(builder: (context, data, _) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Configuration.primaryColor,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black,
                      ),
                      image: DecorationImage(
                        image: CachedNetworkImageProvider(
                          data.memberData?.membershipCardData.photo ?? "",
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    height: 25.w,
                    width: 25.w,
                  );
                }),
              ),
              SizedBox(
                height: 1.h,
              ),
              Consumer<Repository>(builder: (context, data, _) {
                return Text(
                  "${data.memberData?.membershipCardData.name}",
                  style: Configuration.primaryFont(
                    fontSize: 17.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    // Add other text styling as needed
                  ),
                );
              }),
              SizedBox(
                height: 0.3.h,
              ),
              Consumer<Repository>(builder: (context, data, _) {
                return Text(
                  "My Rank : ${data.demographyData?.rank}",
                  style: Configuration.primaryFont(
                    fontSize: 15.sp,
                    color: Configuration.thirdColor,
                    fontWeight: FontWeight.bold,
                    // Add other text styling as needed
                  ),
                );
              }),
              SizedBox(
                height: 0.3.h,
              ),
              Consumer<Repository>(builder: (context, data, _) {
                return RichText(
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
                      text: "${data.memberData?.membershipCardData.refCode}",
                      style: Configuration.primaryFont(
                        fontSize: 15.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        // Add other text styling as needed
                      ),
                    ),
                  ]),
                );
              }),
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
                  // color: Configuration.thirdColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Consumer<Repository>(builder: (context, data, _) {
                      return Text(
                        "${data.joinedByReferralMember.length}",
                        style: Configuration.primaryFont(
                          fontSize: 22.sp,
                          color: Configuration.thirdColor,
                          fontWeight: FontWeight.bold,
                          // Add other text styling as needed
                        ),
                      );
                    }),
                    Text(
                      "Total Referred Members",
                      style: Configuration.primaryFont(
                        fontSize: 16.sp,
                        color: Configuration.thirdColor,
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
              GestureDetector(
                onTap: () {
                  context.router.pushNamed(CustomRoutes.viewListScreen);
                },
                child: Container(
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
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xfffff9b7),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 3.w,
                  vertical: 1.h,
                ),
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Family Members",
                          style: Configuration.primaryFont(
                            fontSize: 17.5.sp,
                            color: Configuration.thirdColor,
                            fontWeight: FontWeight.bold,
                            // Add other text styling as needed
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Consumer<Repository>(builder: (context, data, _) {
                      return ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          var item = data.familyDetail[index];
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 25.w,
                                child: Center(
                                  child: Text(
                                    item.personalDetails.name,
                                    style: Configuration.primaryFont(
                                      fontSize: 14.sp,
                                      color: Colors.black,
                                      // fontWeight: FontWeight.bold,
                                      // Add other text styling as needed
                                    ),
                                  ),
                                ),
                              ),
                              (item.membershipCard.userId == 0)
                                  ? SizedBox(
                                      width: 22.w,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          try {
                                            AutoRouter.of(context).pushNamed(
                                                CustomRoutes
                                                    .updateFamilyDetailsScreen);
                                          } catch (e) {
                                            CustomToast.showWarningToast(
                                                context,
                                                "Oops!",
                                                "Something Went Wrong. Please try again later.");
                                          }
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 2.w,
                                            vertical: 1.h,
                                          ),
                                          child: Text(
                                            "Validate",
                                            style: Configuration.primaryFont(
                                              fontSize: 14.sp,
                                              color: Colors.green,
                                              fontWeight: FontWeight.bold,
                                              // Add other text styling as needed
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  : SizedBox(
                                      width: 22.w,
                                      child: Center(
                                        child: Text(
                                          "Verified",
                                          style: Configuration.primaryFont(
                                            fontSize: 14.sp,
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold,
                                            // Add other text styling as needed
                                          ),
                                        ),
                                      ),
                                    ),
                              GestureDetector(
                                onTap: () {
                                  Configuration.showMembershipCard(
                                      context: context,
                                      name: item.membershipCard.name ?? "",
                                      district:
                                          item.membershipCard.district.name ??
                                              "",
                                      photo: item.membershipCard.photo ?? "",
                                      memberId: item.membershipCard.id ?? 0,
                                      joiningDate:
                                          item.membershipCard!.joiningDate);
                                },
                                child: (item.membershipCard.userId == 0)
                                    ? Icon(
                                        FontAwesomeIcons.download,
                                        size: 16.sp,
                                        color: Colors.grey,
                                      )
                                    : Icon(
                                        FontAwesomeIcons.download,
                                        size: 16.sp,
                                        color: Configuration.thirdColor,
                                      ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  AutoRouter.of(context)
                                      .push(FamilyViewDetailsMemberRoute(
                                          id: item.membershipCard.id))
                                      .then((_) {
                                    fetchFamilyData(context);
                                  });
                                },
                                child: Icon(
                                  Icons.remove_red_eye,
                                  size: 16.sp,
                                  color: Configuration.thirdColor,
                                ),
                              ),
                              // Text(
                              //   "${calculateAge(item.personalDetails.dateOfBirth)} Years",
                              //   style: Configuration.primaryFont(
                              //     fontSize: 15.sp,
                              //     color: Colors.black,
                              //     // fontWeight: FontWeight.bold,
                              //     // Add other text styling as needed
                              //   ),
                              // ),
                            ],
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 1.h,
                          );
                        },
                        itemCount: data.familyDetail.length,
                      );
                    }),
                    SizedBox(
                      height: 3.h,
                    ),
                  ],
                ),
              ),
              // GestureDetector(
              //   onTap: () {
              //     // AutoRouter.of(context).pushNamed(CustomRoutes.addMemberScreen);
              //   },
              //   child: Container(
              //     decoration: const BoxDecoration(
              //       color: Configuration.thirdColor,
              //     ),
              //     width: double.infinity,
              //     height: 8.h,
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         const Icon(
              //           FontAwesomeIcons.download,
              //           color: Colors.white,
              //         ),
              //         SizedBox(
              //           width: 5.w,
              //         ),
              //         Text(
              //           "Download Family Membership Card",
              //           style: Configuration.primaryFont(
              //             fontSize: 15.sp,
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
      ),
      bottomNavigationBar: Configuration.bottomNavigationBar(context),
    );
  }

  void fetchAudienceDemographic(BuildContext context) async {
    final response =
        await ApiService.instance(context).getAudienceDemography(context);
    final result = response.map(
      success: (success) {
        if (success.status == 1) {
          // Access the data in the success case
          Provider.of<Repository>(context, listen: false)
              .setDemographyData(success.data!);
        }
      },
      error: (error) {
        // Handle error case here
      },
    );
  }

  void fetchFamilyData(BuildContext context) async {
    final response =
        await ApiService.instance(context).getFamilyDetails(context);
    if (response.status == 1) {
      Provider.of<Repository>(context, listen: false)
          .setFamilyDetails(response.data!.familyDetails);
    }
  }

  int calculateAge(String dateOfBirth) {
    // Parse the input date
    DateTime birthDate = DateTime.parse(dateOfBirth);
    DateTime today = DateTime.now();

    // Calculate age
    int age = today.year - birthDate.year;

    // Adjust age if the birthday hasn't occurred yet this year
    if (today.month < birthDate.month ||
        (today.month == birthDate.month && today.day < birthDate.day)) {
      age--;
    }

    return age;
  }

  void fetchJoinedBy() async {
    final response =
        await ApiService.instance(context).joinedByList(context, start, length);
    if (response.status == 1) {
      Provider.of<Repository>(context, listen: false)
          .setJoinedByReferralMember(response.data!.data);
    }
    final response1 = await ApiService.instance(context)
        .unverifiedJoinedByList(context, start, length);
    if (response1.status == 1) {
      Provider.of<Repository>(context, listen: false)
          .setUnverifiedJoinedByReferralMember(response1.data!.data);
    }
  }

  void fetchProfileData(BuildContext context) async {
    final responseJson =
        await ApiService.instance(context).getMemberDetails(context);
    if (responseJson.status == 1) {
      Provider.of<Repository>(context, listen: false)
          .setData(responseJson.data as MemberDetailsData);
    }
    final response = await ApiService.instance(context).getProfileData(context);
    if (response.status == 1) {
      Provider.of<Repository>(context, listen: false)
          .setProfileData(response.data!.profileData);
      Provider.of<Repository>(context, listen: false)
          .setSocialData(response.data!.socialDetails);
      Provider.of<Repository>(context, listen: false)
          .setPersonalData(response.data!.personalDetails);
    }
  }
}
