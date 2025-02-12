import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:uppl/Constants/routes.dart';
import 'package:uppl/Models/family/referred_family_details_model.dart';
import 'package:uppl/Repository/repository.dart';
import 'package:uppl/main.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../API/api_services.dart';
import '../../Constants/configuration.dart';
import '../../Helper/toast.dart';
import '../../Models/Membership/membership_card_model.dart';
import '../../Models/family/family_details_model.dart';
import '../../Navigation/Router/app_router.dart';
import '../CommonWidgets/custom_nav_drawer.dart';

@RoutePage()
class FamilyViewDetailsMemberScreen extends StatefulWidget {
  const FamilyViewDetailsMemberScreen({super.key, required this.id});

  final int id;

  @override
  State<FamilyViewDetailsMemberScreen> createState() =>
      _FamilyViewDetailsMemberScreenState();
}

class _FamilyViewDetailsMemberScreenState
    extends State<FamilyViewDetailsMemberScreen> {
  FamilyDetail? data;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      try {
        data = Provider.of<Repository>(context, listen: false)
            .familyDetail
            .firstWhere((e) => e.personalDetails.memberId == widget.id);
      } catch (e) {
        print(e);
      }
      fetchFamilyDetails(context, data?.membershipCard.id);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Configuration.homeBgColor,
      appBar: Configuration.appBar,
      drawer: const CustomNavDrawer(),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 4.w,
                  vertical: 1.h,
                ),
                // height: 68.h,
                width: double.infinity,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            context.router.popForced();
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Configuration.secondaryColor,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: EdgeInsets.all(1.w),
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                              size: 18.sp,
                            ),
                          ),
                        ),
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
                                    data?.membershipCard.photo ?? "",
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
                              "Membership ID: ${data?.membershipCard.id ?? "N/A"}",
                              style: Configuration.primaryFont(
                                fontSize: 11.sp,
                                color: Colors.black,
                                // fontWeight: FontWeight.bold,
                                // Add other text styling as needed
                              ),
                            ),
                            Text(
                              data?.personalDetails.dateOfBirth == null
                                  ? "N/A"
                                  : "Date of Joining: ${DateFormat("dd MMM,yyyy").format(DateTime.parse(data!.personalDetails.dateOfBirth))}",
                              style: Configuration.primaryFont(
                                fontSize: 11.sp,
                                color: Colors.black,
                                // fontWeight: FontWeight.bold,
                                // Add other text styling as needed
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 2.h,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 50.w,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Configuration.primaryColor,
                                  ),
                                  onPressed: () {
                                    Configuration.showMembershipCard(
                                      context: context,
                                      name: data?.membershipCard.name ?? "",
                                      district:
                                          data?.membershipCard.district.name ??
                                              "",
                                      photo: data?.membershipCard.photo ?? "",
                                      memberId: data?.membershipCard.id ?? 0,
                                      joiningDate:
                                          data!.membershipCard.joiningDate,
                                    );
                                  },
                                  child: Row(
                                    children: [
                                      const Icon(
                                        FontAwesomeIcons.download,
                                        color: Colors.black,
                                      ),
                                      const Spacer(),
                                      Text(
                                        "UPPL Membership Card",
                                        style: Configuration.primaryFont(
                                            fontSize: 13.sp,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600),
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
                    SizedBox(
                      height: 2.h,
                    ),
                    (data?.membershipCard.userId == 0 ?? true) ||
                            data?.membershipCard.userId == null
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 90.w,
                                height: 4.h,
                                child: Configuration.rectangleButton(
                                  onPressed: () async {
                                    final result =
                                        await AutoRouter.of(context).push(
                                      VerifiedRoute(
                                        mobile:
                                            data?.personalDetails.mobileNo ??
                                                "",
                                      ),
                                    );
                                    if (result != null) {
                                      // Handle the result if any is returned
                                      updateProfile(result.toString(), data!);
                                    }
                                  },
                                  text: 'Validate',
                                  bgColor: Configuration.errorColor,
                                  fontSize: 16.sp,
                                ),
                              ),
                            ],
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 30.w,
                                height: 4.h,
                                child: Configuration.rectangleButton(
                                  onPressed: () {
                                    debugPrint("Show");
                                    Provider.of<Repository>(context,
                                            listen: false)
                                        .setMembersFamilyDetails(data!);
                                    AutoRouter.of(context)
                                        .pushNamed(CustomRoutes
                                            .updateMyFamilyDetailsScreen)
                                        .then((_) {
                                      fetchFamilyDetails(
                                          context,
                                          Provider.of<Repository>(context,
                                                  listen: false)
                                              .memberData
                                              ?.personalDetails
                                              ?.memberId);
                                    });
                                  },
                                  text: 'Edit',
                                  bgColor: Configuration.secondaryColor,
                                  fontColor: Colors.white,
                                  fontSize: 14.sp,
                                ),
                              ),
                              SizedBox(
                                width: 55.w,
                                height: 4.h,
                                child: Configuration.rectangleButton(
                                  onPressed: () {
                                    AutoRouter.of(context)
                                        .push(AddFamilyMemberDetailsRoute(
                                      id: Provider.of<Repository>(context,
                                                  listen: false)
                                              .memberData
                                              ?.personalDetails
                                              .memberId ??
                                          0,
                                      name: Provider.of<Repository>(context,
                                                  listen: false)
                                              .memberData
                                              ?.personalDetails
                                              .name ??
                                          "",
                                    ));
                                  },
                                  text: 'Add More Family Member',
                                  bgColor: Configuration.thirdColor,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ],
                          ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      "Name:",
                      style: Configuration.primaryFont(
                        fontSize: 13.5.sp,
                        color: Colors.black,
                        // fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 0.3.h,
                    ),
                    SizedBox(
                      width: 70.w,
                      child: Text(
                        (data?.membershipCard.name ?? "N/A")
                            .capitalizeFirstOfEach(),
                        style: Configuration.primaryFont(
                          fontSize: 15.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      "Mobile Number:",
                      style: Configuration.primaryFont(
                        fontSize: 13.5.sp,
                        color: Colors.black,
                        // fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 0.3.h,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 25.w, // Adjusted width to accommodate icons
                          child: Text(
                            (data?.membershipCard.mobileNo ?? "N/A")
                                .capitalizeFirstOfEach(),
                            style: Configuration.primaryFont(
                              fontSize: 15.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        // Spacer(),
                        GestureDetector(
                          onTap: () async {
                            final phoneNumber = data?.membershipCard.mobileNo;
                            if (phoneNumber != null && phoneNumber.isNotEmpty) {
                              final url = Uri.parse('tel:$phoneNumber');
                              if (await canLaunchUrl(url)) {
                                await launchUrl(url);
                              }
                            }
                          },
                          child: Icon(
                            Icons.phone,
                            size: 16.sp,
                            color: Configuration.thirdColor,
                          ),
                        ),
                        SizedBox(width: 2.w),
                        GestureDetector(
                          onTap: () async {
                            final phoneNumber = data?.membershipCard.mobileNo;
                            if (phoneNumber != null && phoneNumber.isNotEmpty) {
                              final whatsappUrl = Uri.parse(
                                'https://wa.me/$phoneNumber',
                              );
                              if (await canLaunchUrl(whatsappUrl)) {
                                await launchUrl(whatsappUrl);
                              }
                            }
                          },
                          child: Icon(
                            FontAwesomeIcons.whatsapp,
                            size: 16.sp,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      "Address:",
                      style: Configuration.primaryFont(
                        fontSize: 13.5.sp,
                        color: Colors.black,
                        // fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 0.3.h,
                    ),
                    SizedBox(
                      width: 70.w,
                      child: Text(
                        (data?.membershipCard.address ?? "N/A")
                            .capitalizeFirstOfEach(),
                        style: Configuration.primaryFont(
                          fontSize: 15.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      "Pincode:",
                      style: Configuration.primaryFont(
                        fontSize: 13.5.sp,
                        color: Colors.black,
                        // fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 0.3.h,
                    ),
                    SizedBox(
                      width: 70.w,
                      child: Text(
                        data?.membershipCard.pinCode ?? "N/A",
                        style: Configuration.primaryFont(
                          fontSize: 15.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      "District:",
                      style: Configuration.primaryFont(
                        fontSize: 13.5.sp,
                        color: Colors.black,
                        // fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 0.3.h,
                    ),
                    SizedBox(
                      width: 70.w,
                      child: Text(
                        data?.membershipCard.district.name ?? "N/A",
                        style: Configuration.primaryFont(
                          fontSize: 15.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      "BTC Constituency:",
                      style: Configuration.primaryFont(
                        fontSize: 13.5.sp,
                        color: Colors.black,
                        // fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 0.3.h,
                    ),
                    Consumer<Repository>(builder: (context, _, __) {
                      return SizedBox(
                        width: 70.w,
                        child: Text(
                          _.btcConstituency.indexWhere((e) =>
                                      e.id ==
                                      data?.membershipCard.btcConstituency) ==
                                  -1
                              ? "N/A"
                              : (_.btcConstituency
                                  .firstWhere((e) =>
                                      e.id ==
                                      data?.membershipCard.btcConstituency)
                                  .name),
                          style: Configuration.primaryFont(
                            fontSize: 15.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      );
                    }),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      "Party District:",
                      style: Configuration.primaryFont(
                        fontSize: 13.5.sp,
                        color: Colors.black,
                        // fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 0.3.h,
                    ),
                    Consumer<Repository>(builder: (context, _, __) {
                      return SizedBox(
                        width: 70.w,
                        child: Text(
                          _.partyDistricts.indexWhere((e) =>
                                      e.id ==
                                      data?.membershipCard.partyDistrict) ==
                                  -1
                              ? "N/A"
                              : (_.partyDistricts
                                  .firstWhere((e) =>
                                      e.id ==
                                      data!.membershipCard.partyDistrict)
                                  .name),
                          style: Configuration.primaryFont(
                            fontSize: 15.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      );
                    }),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      "Primary:",
                      style: Configuration.primaryFont(
                        fontSize: 13.5.sp,
                        color: Colors.black,
                        // fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 0.3.h,
                    ),
                    Consumer<Repository>(builder: (context, _, __) {
                      return SizedBox(
                        width: 70.w,
                        child: Text(
                          data?.membershipCard.primaryName ?? 'N/A',
                          style: Configuration.primaryFont(
                            fontSize: 15.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      );
                    }),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      "Booth:",
                      style: Configuration.primaryFont(
                        fontSize: 13.5.sp,
                        color: Colors.black,
                        // fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 0.3.h,
                    ),
                    Consumer<Repository>(builder: (context, _, __) {
                      return SizedBox(
                        width: 70.w,
                        child: Text(
                          _.booths.indexWhere((e) =>
                                      e.id == data?.membershipCard.boothId) ==
                                  -1
                              ? "N/A"
                              : _.booths
                                  .firstWhere((e) =>
                                      e.id == data?.membershipCard.boothId)
                                  .name,
                          style: Configuration.primaryFont(
                            fontSize: 15.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      );
                    }),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      "Assembly Constituency:",
                      style: Configuration.primaryFont(
                        fontSize: 13.5.sp,
                        color: Colors.black,
                        // fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 0.3.h,
                    ),
                    Consumer<Repository>(builder: (context, _, __) {
                      return SizedBox(
                        width: 70.w,
                        child: Text(
                          _.assemblyConstituencies.indexWhere((e) =>
                                      e.id ==
                                      data?.membershipCard
                                          .assemblyConstituency) ==
                                  -1
                              ? "N/A"
                              : _.assemblyConstituencies
                                  .firstWhere((e) =>
                                      e.id ==
                                      data?.membershipCard.assemblyConstituency)
                                  .name,
                          style: Configuration.primaryFont(
                            fontSize: 15.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      );
                    }),
                  ],
                ),
              ),
              Consumer<Repository>(builder: (context, data, __) {
                return data.referredMembersFamilyDetails.isEmpty
                    ? Container()
                    : Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: 4.w,
                          vertical: 1.5.h,
                        ),
                        decoration: const BoxDecoration(
                          color: Color(0xfffff9b7),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Family Member",
                              style: Configuration.primaryFont(
                                fontSize: 15.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Table(
                              defaultColumnWidth: FixedColumnWidth(26.w),
                              children: [
                                for (var item
                                    in data.referredMembersFamilyDetails)
                                  TableRow(
                                    children: [
                                      SizedBox(
                                        width: 23.w,
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
                                          ? GestureDetector(
                                              onTap: () async {
                                                final result =
                                                    await AutoRouter.of(context)
                                                        .push(
                                                  VerifiedRoute(
                                                    mobile: item.personalDetails
                                                            .mobileNo ??
                                                        "",
                                                  ),
                                                );
                                                if (result != null) {
                                                  // Handle the result if any is returned
                                                  debugPrint(
                                                      "Returned value $result");
                                                  // updateProfile(
                                                  //     result.toString(), item);
                                                }
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Configuration
                                                      .primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                                width: 18.w,
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 1.w,
                                                  vertical: 0.5.h,
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "Validate",
                                                    style: Configuration
                                                        .primaryFont(
                                                      fontSize: 14.sp,
                                                      color: Colors.green,
                                                      fontWeight:
                                                          FontWeight.bold,
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
                                                  style:
                                                      Configuration.primaryFont(
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
                                          if (item.membershipCard.userId != 0) {
                                            Configuration.showMembershipCard(
                                                context: context,
                                                name:
                                                    item.membershipCard.name ??
                                                        "",
                                                district: item.membershipCard
                                                        .district.name ??
                                                    "",
                                                photo:
                                                    item.membershipCard.photo ??
                                                        "",
                                                memberId:
                                                    item.membershipCard.id ?? 0,
                                                joiningDate: item.membershipCard
                                                    .joiningDate);
                                          }
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
                                              .push(
                                                  ReferralFamilyViewDetailsMemberRoute(
                                                      id: item
                                                          .membershipCard.id))
                                              .then((_) {
                                            fetchFamilyDetails(
                                                context,
                                                Provider.of<Repository>(context,
                                                        listen: false)
                                                    .memberData
                                                    ?.personalDetails
                                                    ?.memberId);
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
                                  ),
                                rowSpacer,
                              ],
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                          ],
                        ),
                      );
              }),
            ],
          ),
        ),
      ),
    );
  }

  void showImage(mobileNo) async {
    final response =
        await ApiService.instance(context).getMembershipCard(mobileNo, context);

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

  var rowSpacer = TableRow(children: [
    SizedBox(
      height: 1.5.h,
    ),
    SizedBox(
      height: 1.5.h,
    ),
    SizedBox(
      height: 1.5.h,
    ),
    SizedBox(
      height: 1.5.h,
    ),
  ]);

  void fetchFamilyDetails(BuildContext context, int? memberId) async {
    final response = await ApiService.instance(context)
        .getReferredFamilyDetails(context, memberId);
    if (response.status == 1) {
      Provider.of<Repository>(context, listen: false)
          .setReferredMemberFamilyDetails(response.data.familyDetails);
    }
  }

  void updateProfile(
    String result,
    FamilyDetail? referredItem,
  ) async {
    final response = await ApiService.instance(context)
        .updateFamilyMemberPersonalDetails(
            context,
            referredItem?.membershipCard.id,
            FindTheHeadOfTheFamilyMember(
                Provider.of<Repository>(context, listen: false)
                    .referredMembersFamilyDetails),
            referredItem?.membershipCard.name,
            referredItem?.membershipCard.dateOfBirth,
            referredItem?.membershipCard.gender,
            referredItem?.membershipCard.relationship,
            result,
            null,
            FindTheHeadOfTheFamilyMember(
                Provider.of<Repository>(context, listen: false)
                    .referredMembersFamilyDetails),
            referredItem?.personalDetails.aadhaarNo,
            referredItem?.personalDetails.voterId);
    if (response.status == 1) {
      CustomToast.showSuccessToast(
          context, "Profile Validated Successfully", response.message);
    } else {
      CustomToast.showFailureToast(
          context, "Something Went Wrong", response.message);
    }
  }

  int? FindTheHeadOfTheFamilyMember(
      List<ReferredMemberFamilyDetails> referredMembersFamilyDetails) {
    // Priority order for relationships
    const List<int> priorityOrder = [1, 5]; // 1: Father, 5: Husband

    // Search for head of family based on priority
    for (var priority in priorityOrder) {
      for (var member in referredMembersFamilyDetails) {
        if (member.membershipCard.relationship == priority) {
          return member.membershipCard.id;
        }
      }
    }

    // Fallback: Return the first member if no Father or Husband is found
    if (referredMembersFamilyDetails.isNotEmpty) {
      return referredMembersFamilyDetails.first.membershipCard.id;
    }

    // If the list is empty, return null
    return null;
  }
}
