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
import '../../Models/JSON/generate_json_model.dart';
import '../../Models/Membership/membership_card_model.dart';
import '../../Navigation/Router/app_router.dart';
import '../CommonWidgets/custom_nav_drawer.dart';

@RoutePage()
class ReferralFamilyViewDetailsMemberScreen extends StatefulWidget {
  const ReferralFamilyViewDetailsMemberScreen({super.key, required this.id});

  final int id;

  @override
  State<ReferralFamilyViewDetailsMemberScreen> createState() =>
      _ReferralFamilyViewDetailsMemberScreenState();
}

class _ReferralFamilyViewDetailsMemberScreenState
    extends State<ReferralFamilyViewDetailsMemberScreen> {
  ReferredMemberFamilyDetails? data;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      try {
        data = Provider.of<Repository>(context, listen: false)
            .referredMembersFamilyDetails
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
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 4.w,
          vertical: 1.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // Removed fixed height to allow dynamic sizing
              width: double.infinity,
              child: Column(
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
                            ),
                          ),
                          Text(
                            data?.personalDetails.dateOfBirth == null
                                ? "N/A"
                                : "Date of Joining: ${DateFormat("dd MMM,yyyy").format(DateTime.parse(data!.personalDetails.dateOfBirth))}",
                            style: Configuration.primaryFont(
                              fontSize: 11.sp,
                              color: Colors.black,
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
                                          data?.personalDetails.mobileNo ?? "",
                                    ),
                                  );
                                  if (result != null) {
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
                                  Provider.of<Repository>(context,
                                          listen: false)
                                      .setReferredMembersFamilyDetails(data!);
                                  AutoRouter.of(context)
                                      .pushNamed(CustomRoutes
                                          .updateFamilyDetailsScreen)
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
                                      .pushNamed(CustomRoutes.addMemberScreen);
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
                  InfoSection(
                    title: "Name:",
                    content: (data?.membershipCard.name ?? "N/A")
                        .capitalizeFirstOfEach(),
                  ),
                  InfoSection(
                    title: "Mobile Number:",
                    contentWidget: Row(
                      children: [
                        Expanded(
                          flex: 4,
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
                        IconButton(
                          icon: Icon(
                            Icons.phone,
                            size: 16.sp,
                            color: Configuration.thirdColor,
                          ),
                          onPressed: () async {
                            final phoneNumber = data?.membershipCard.mobileNo;
                            if (phoneNumber != null && phoneNumber.isNotEmpty) {
                              final url = Uri.parse('tel:$phoneNumber');
                              if (await canLaunchUrl(url)) {
                                await launchUrl(url);
                              }
                            }
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            FontAwesomeIcons.whatsapp,
                            size: 16.sp,
                            color: Colors.green,
                          ),
                          onPressed: () async {
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
                        ),
                      ],
                    ),
                  ),
                  InfoSection(
                    title: "Address:",
                    content: (data?.membershipCard.address ?? "N/A")
                        .capitalizeFirstOfEach(),
                  ),
                  InfoSection(
                    title: "Pincode:",
                    content: data?.membershipCard.pinCode ?? "N/A",
                  ),
                  InfoSection(
                    title: "District:",
                    content: data?.membershipCard.district.name ?? "N/A",
                  ),
                  InfoSection(
                    title: "BTC Constituency:",
                    contentWidget: Consumer<Repository>(
                      builder: (context, repo, _) {
                        final constituency = repo.btcConstituency.firstWhere(
                            (e) => e.id == data?.membershipCard.btcConstituency,
                            orElse: () =>
                                BTCConstituency(id: 0, name: "N/A", status: 0));
                        return Text(
                          constituency.name,
                          style: Configuration.primaryFont(
                            fontSize: 15.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        );
                      },
                    ),
                  ),
                  InfoSection(
                    title: "Party District:",
                    contentWidget: Consumer<Repository>(
                      builder: (context, repo, _) {
                        final partyDistrict = repo.partyDistricts.firstWhere(
                          (e) => e.id == data?.membershipCard.partyDistrict,
                          orElse: () => PartyDistrict(id: 0, name: "N/A"),
                        );
                        return Text(
                          partyDistrict.name,
                          style: Configuration.primaryFont(
                            fontSize: 15.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        );
                      },
                    ),
                  ),
                  InfoSection(
                    title: "Booth:",
                    contentWidget: Consumer<Repository>(
                      builder: (context, repo, _) {
                        final booth = repo.booths.firstWhere(
                          (e) => e.id == data?.membershipCard.boothId,
                          orElse: () =>
                              Booth(id: 0, name: "N/A", btcPrimaryId: 0),
                        );
                        return Text(
                          booth.name,
                          style: Configuration.primaryFont(
                            fontSize: 15.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        );
                      },
                    ),
                  ),
                  InfoSection(
                    title: "Assembly Constituency:",
                    contentWidget: Consumer<Repository>(
                      builder: (context, repo, _) {
                        final assemblyConstituency =
                            repo.assemblyConstituencies.firstWhere(
                          (e) =>
                              e.id == data?.membershipCard.assemblyConstituency,
                          orElse: () => AssemblyConstituency(
                            id: 0,
                            name: "N/A",
                          ),
                        );
                        return Text(
                          assemblyConstituency.name,
                          style: Configuration.primaryFont(
                            fontSize: 15.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Consumer<Repository>(builder: (context, repo, __) {
              return repo.referredMembersFamilyDetails.isEmpty
                  ? SizedBox.shrink()
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
                            columnWidths: {
                              0: FixedColumnWidth(26.w),
                              1: FixedColumnWidth(22.w),
                              2: FixedColumnWidth(22.w),
                              3: FixedColumnWidth(22.w),
                            },
                            children: [
                              ...repo.referredMembersFamilyDetails.map((item) {
                                return TableRow(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 1.h),
                                      child: Text(
                                        item.personalDetails.name,
                                        style: Configuration.primaryFont(
                                          fontSize: 14.sp,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    item.membershipCard.userId == 0
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
                                                updateProfile(
                                                    result.toString(), item);
                                              }
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    Configuration.primaryColor,
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
                                                  style:
                                                      Configuration.primaryFont(
                                                    fontSize: 14.sp,
                                                    color: Colors.green,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                        : Center(
                                            child: Text(
                                              "Verified",
                                              style: Configuration.primaryFont(
                                                fontSize: 14.sp,
                                                color: Colors.green,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                    GestureDetector(
                                      onTap: () {
                                        if (item.membershipCard.userId != 0) {
                                          Configuration.showMembershipCard(
                                              context: context,
                                              name: item.membershipCard.name ??
                                                  "",
                                              district: item.membershipCard
                                                      .district.name ??
                                                  "",
                                              photo:
                                                  item.membershipCard.photo ??
                                                      "",
                                              memberId:
                                                  item.membershipCard.id ?? 0,
                                              joiningDate: item
                                                  .membershipCard.joiningDate);
                                        }
                                      },
                                      child: Icon(
                                        FontAwesomeIcons.download,
                                        size: 16.sp,
                                        color: item.membershipCard.userId == 0
                                            ? Colors.grey
                                            : Configuration.thirdColor,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        AutoRouter.of(context)
                                            .push(
                                                ReferralFamilyViewDetailsMemberRoute(
                                                    id: item.membershipCard.id))
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
                                  ],
                                );
                              }).toList(),
                              TableRow(
                                children: [
                                  SizedBox(height: 1.5.h),
                                  SizedBox(height: 1.5.h),
                                  SizedBox(height: 1.5.h),
                                  SizedBox(height: 1.5.h),
                                ],
                              ),
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
    );
  }

  void showImage(mobileNo) async {
    final response =
        await ApiService.instance(context).getMembershipCard(mobileNo, context);

    response.when(
      success: (status, message, data, code) {
        if (status == 1 && data!.isNotEmpty) {
          final dataEntry = data.first;
          showImageDialog(dataEntry);
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
    ReferredMemberFamilyDetails? referredItem,
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
            referredItem?.membershipCard.refId,
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

class InfoSection extends StatelessWidget {
  final String title;
  final String? content;
  final Widget? contentWidget;

  const InfoSection({
    Key? key,
    required this.title,
    this.content,
    this.contentWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Configuration.primaryFont(
            fontSize: 13.5.sp,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 0.3.h,
        ),
        contentWidget ??
            SizedBox(
              width: 70.w,
              child: Text(
                content ?? "N/A",
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
      ],
    );
  }
}
