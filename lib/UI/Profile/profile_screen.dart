import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:uppl/Constants/configuration.dart';
import 'package:uppl/Repository/repository.dart';

import '../../API/api_services.dart';
import '../../Constants/routes.dart';
import '../../Models/Member/member_details_model.dart';
import '../../Models/Membership/membership_card_model.dart';
import '../../Navigation/Router/app_router.dart';
import '../CommonWidgets/custom_nav_drawer.dart';
import 'Widgets/membership_card.dart';

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
            Consumer<Repository>(builder: (context, data, _) {
              return Skeletonizer(
                enabled: data.memberData == null,
                child: Padding(
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
                                      "",
                                ),
                                fit: BoxFit.fill,
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
                              return Skeletonizer(
                                enabled: data.memberData == null,
                                child: Text(
                                  "${data.memberData?.membershipCardData.name}",
                                  style: Configuration.primaryFont(
                                    fontSize: 16.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    // Add other text styling as needed
                                  ),
                                ),
                              );
                            }),
                            SizedBox(
                              height: 3.h,
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
                                      "Update Your Profile",
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
              return Skeletonizer(
                enabled: data.memberData == null,
                child: MembershipCard(
                  name: current?.name ?? "N/A",
                  district: current?.district ?? "N/A",
                  photo: current?.photo ?? "",
                  memberId:
                      "${data.memberData?.membershipCardData.membershipNo}",
                  joiningDate: current?.joiningDate ?? "",
                ),
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
              return Skeletonizer(
                enabled: data.memberData == null,
                child: Padding(
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
                ),
              );
            }),
          ],
        ),
      ),
      bottomNavigationBar: Configuration.bottomNavigationBar(context),
    );
  }

  // void showImage() async {
  //   final profile = Provider.of<Repository>(context, listen: false).memberData;
  //   final response = await ApiService.instance
  //       .getMembershipCard(profile!.personalDetails.mobileNo, context);
  //
  //   response.when(
  //     success: (status, message, data, code) {
  //       if (status == 1 && data!.isNotEmpty) {
  //         final dataEntry = data.first;
  //         showImageDialog(
  //             dataEntry); // Pass `dataEntry` directly without casting
  //       }
  //     },
  //     error: (status, message, errors, code) {
  //       print("Error: $message");
  //     },
  //   );
  // }

  void showImageDialog(MembershipCardInfoData data) {
    AutoRouter.of(context).push(CustomImageViewerRoute(url: data.file!));
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      fetchDetails(context);
      fetchProfileData(context);
      fetchDropdown(context);
    });
  }

  void fetchDropdown(BuildContext context) async {
    final response =
        await ApiService.instance(context).getDropdownData(context);
    response.map(
        success: (val) {
          if (response.status == 1) {
            Provider.of<Repository>(context, listen: false)
                .setCastes(val.data.castes ?? []);
            var list = val.data.categories.values.toList();
            Provider.of<Repository>(context, listen: false)
                .setCategories(list ?? []);
            Provider.of<Repository>(context, listen: false)
                .setReligions(val.data.religions);
            Provider.of<Repository>(context, listen: false)
                .setProfessions(val.data.professions ?? []);
            Provider.of<Repository>(context, listen: false)
                .setCountry(val.data.country.values.toList() ?? []);
            Provider.of<Repository>(context, listen: false)
                .setMotherTounge(val.data.motherTongue);
            Provider.of<Repository>(context, listen: false)
                .setCommunity(val.data.community);
            Provider.of<Repository>(context, listen: false)
                .setEducationLevels(val.data.educationLevels);
            Provider.of<Repository>(context, listen: false).setRelationship(val
                    .data.relationships.values
                    .map((e) => e.toString())
                    .toList() ??
                []);
          }
        },
        error: (err) {});
  }

  void fetchProfileData(BuildContext context) async {
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

  void fetchDetails(BuildContext context) async {
    final responseJson =
        await ApiService.instance(context).getMemberDetails(context);
    if (responseJson.status == 1) {
      Provider.of<Repository>(context, listen: false)
          .setData(responseJson.data as MemberDetailsData);
    }
    final response = await ApiService.instance(context).generateJSON(context);
    if (response.status == 1) {
      Provider.of<Repository>(context, listen: false).setPartyDistricts(
          response.intermediateData.data.partyDistricts ?? []);
      Provider.of<Repository>(context, listen: false)
          .setDistricts(response.intermediateData.data.districts ?? []);
      Provider.of<Repository>(context, listen: false).setAssemblyConstituencies(
          response.intermediateData.data.assemblyConstituencies ?? []);
      final list = response
          .intermediateData.data.btcAssemblyConstituencies?.values
          .toList();
      Provider.of<Repository>(context, listen: false)
          .setConstituency(list ?? []);
      // Provider.of<Repository>(context, listen: false)
      //     .setConstituencyList(list ?? []);
      final temp = response.intermediateData.data.btcPrimaries?.values.toList();
      Provider.of<Repository>(context, listen: false).setBTCConstituency(
          response.intermediateData.data.btcConstituency ?? []);
      final tempList = (response.intermediateData.data.booths!.values.toList());
      Provider.of<Repository>(context, listen: false)
          .setBooths(tempList.expand((innerList) => innerList).toList());
      Provider.of<Repository>(context, listen: false).setPrimary(temp ?? []);
      Provider.of<Repository>(context, listen: false)
          .setPrimaryList(response.intermediateData.data.btcPrimaries ?? {});
      Provider.of<Repository>(context, listen: false)
          .setVillages(response.intermediateData.data.villages ?? []);
      debugPrint(
          "Setting ${response.intermediateData.data.partyDistricts?.length} ${response.intermediateData.data.districts?.length} ${response.intermediateData.data.assemblyConstituencies?.length} ${response.intermediateData.data.btcAssemblyConstituencies?.length} ${response.intermediateData.data.btcPrimaries?.values}");
    }
  }
}
