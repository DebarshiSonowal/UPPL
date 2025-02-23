import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:uppl/Constants/routes.dart';
import 'package:uppl/Models/JSON/generate_json_model.dart';
import 'package:uppl/Models/family/referred_family_details_model.dart';
import 'package:uppl/Repository/repository.dart';
import 'package:uppl/Storage/config_storage.dart';

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
                  return Skeletonizer(
                    enabled: data.memberData == null,
                    child: Container(
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
                    ),
                  );
                }),
              ),
              SizedBox(
                height: 1.h,
              ),
              Consumer<Repository>(builder: (context, data, _) {
                return Skeletonizer(
                  enabled: data.memberData == null,
                  child: Text(
                    "${data.memberData?.membershipCardData.name}",
                    style: Configuration.primaryFont(
                      fontSize: 17.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      // Add other text styling as needed
                    ),
                  ),
                );
              }),
              SizedBox(
                height: 0.3.h,
              ),
              Consumer<Repository>(builder: (context, data, _) {
                return Skeletonizer(
                  enabled: data.memberData == null,
                  child: Text(
                    "My Rank : ${data.demographyData?.rank}",
                    style: Configuration.primaryFont(
                      fontSize: 15.sp,
                      color: Configuration.thirdColor,
                      fontWeight: FontWeight.bold,
                      // Add other text styling as needed
                    ),
                  ),
                );
              }),
              SizedBox(
                height: 0.3.h,
              ),
              Consumer<Repository>(builder: (context, data, _) {
                return Skeletonizer(
                  enabled: data.memberData == null,
                  child: RichText(
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
                  ),
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
                      return Skeletonizer(
                        enabled: data.demographyData == null,
                        child: Text(
                          "${data.demographyData?.totalMembers}",
                          style: Configuration.primaryFont(
                            fontSize: 22.sp,
                            color: Configuration.thirdColor,
                            fontWeight: FontWeight.bold,
                            // Add other text styling as needed
                          ),
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
                height: 0.5.h,
              ),
              ConfigStorage.instance.isAdmin
                  ? GestureDetector(
                      onTap: () {
                        context.router.pushNamed(CustomRoutes.analyticsScreen);
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
                            Icon(
                              FontAwesomeIcons.chartLine,
                              size: 22.sp,
                              color: Colors.white,
                            ),
                            SizedBox(height: 1.h),
                            Text(
                              "View Analytics",
                              style: Configuration.primaryFont(
                                fontSize: 18.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Member Growth & Statistics",
                              style: Configuration.primaryFont(
                                fontSize: 14.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  : Container(),
              ConfigStorage.instance.isAdmin
                  ? SizedBox(
                      height: 2.h,
                    )
                  : Container(),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xffE8F4FF),
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: 3.w,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 3.w,
                  vertical: 1.5.h,
                ),
                child: Column(
                  children: [
                    Text(
                      "Referred Members Demographic",
                      style: Configuration.primaryFont(
                        fontSize: 16.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    SizedBox(
                      height: 18.h,
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
                      return Skeletonizer(
                        enabled: data.familyDetail == null,
                        child: ListView.separated(
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
                                        // width: 24.w,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Provider.of<Repository>(context,
                                                    listen: false)
                                                .setReferredMembersFamilyDetails(
                                                    ReferredMemberFamilyDetails(
                                              membershipCard: MembershipCard(
                                                id: item.membershipCard.id,
                                                userId:
                                                    item.membershipCard.userId,
                                                refId:
                                                    item.membershipCard.refId,
                                                title:
                                                    item.membershipCard.title,
                                                address:
                                                    item.membershipCard.address,
                                                pinCode:
                                                    item.membershipCard.pinCode,
                                                btcAssemblyConstituencyId: item
                                                    .membershipCard
                                                    .btcAssemblyConstituencyId,
                                                btcConstituency: item
                                                    .membershipCard
                                                    .btcConstituency,
                                                partyDistrict: item
                                                    .membershipCard
                                                    .partyDistrict,
                                                assemblyConstituency: item
                                                    .membershipCard
                                                    .assemblyConstituency,
                                                primaryId: item
                                                    .membershipCard.primaryId,
                                                boothId:
                                                    item.membershipCard.boothId,
                                                villageId: item
                                                    .membershipCard.villageId,
                                                createdBy: item
                                                    .membershipCard.createdBy,
                                                updateCount: item
                                                    .membershipCard.updateCount,
                                                createdAt: item
                                                    .membershipCard.createdAt,
                                                updatedAt: item
                                                    .membershipCard.updatedAt,
                                                village:
                                                    item.membershipCard.village,
                                                district: District(
                                                  id: item.membershipCard
                                                      .district.id,
                                                  name: item.membershipCard
                                                      .district.name,
                                                ),
                                                name: item.membershipCard.name,
                                                mobileNo: item
                                                    .membershipCard.mobileNo,
                                                membershipNo: item
                                                    .membershipCard
                                                    .membershipNo,
                                                refCode:
                                                    item.membershipCard.refCode,
                                                gender:
                                                    item.membershipCard.gender,
                                                dateOfBirth: item
                                                    .membershipCard.dateOfBirth,
                                                joiningDate: item
                                                    .membershipCard.joiningDate,
                                                relationship: item
                                                    .membershipCard
                                                    .relationship,
                                              ),
                                              personalDetails:
                                                  ReferredPersonalDetails(
                                                      memberId: item
                                                          .personalDetails
                                                          .memberId,
                                                      name: item
                                                          .personalDetails.name,
                                                      dateOfBirth: item
                                                          .personalDetails
                                                          .dateOfBirth,
                                                      mobileNo: item
                                                          .personalDetails
                                                          .mobileNo,
                                                      gender: item
                                                          .personalDetails
                                                          .gender,
                                                      voterId: item
                                                              .personalDetails
                                                              .voterId ??
                                                          ""),
                                            ));
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
                                              horizontal: 1.5.w,
                                              vertical: 0.5.h,
                                            ),
                                            child: Text(
                                              "Validate",
                                              style: Configuration.primaryFont(
                                                fontSize: 12.sp,
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
                                              fontSize: 12.sp,
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
                                        memberId:
                                            (item.membershipCard.membershipNo ??
                                                "0"),
                                        joiningDate:
                                            item.membershipCard!.joiningDate);
                                  },
                                  child: Icon(
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
                        ),
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
