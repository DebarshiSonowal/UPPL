import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:uppl/API/api_services.dart';
import 'package:uppl/Helper/toast.dart';

import '../../../Constants/configuration.dart';
import '../../../Repository/repository.dart';

class SocialScreen extends StatefulWidget {
  const SocialScreen({super.key});

  @override
  State<SocialScreen> createState() => _SocialScreenState();
}

class _SocialScreenState extends State<SocialScreen> {
  final whatsapp = TextEditingController();
  final facebook = TextEditingController();
  final twitter = TextEditingController();
  final instagram = TextEditingController();
  Map<String, String> errorMessages = {};

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      final data =
          Provider.of<Repository>(context, listen: false).socialDetails;
      whatsapp.text = data?.aleternateNumber ?? "";
      facebook.text = data?.facebookUrl ?? "";
      twitter.text = data?.twitterUrl ?? "";
      instagram.text = data?.instagramUrl ?? "";
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 2.h,
            ),
            Text(
              "Social Media Details",
              style: Configuration.primaryFont(
                fontSize: 16.sp,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                // Add other text styling as needed
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 4.w,
              ),
              child: Row(
                children: [
                  Text(
                    "Whatsapp/ Alternative number",
                    style: Configuration.primaryFont(
                      fontSize: 14.sp,
                      color: Colors.black87,
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
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 4.w,
              ),
              child: TextFormField(
                controller: whatsapp,
                cursorColor: Colors.black,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Whatsapp/ Alternative number',
                  labelStyle: Configuration.primaryFont(
                    fontSize: 14.sp,
                    color: Colors.black54,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 4.w,
              ),
              child: Row(
                children: [
                  Text(
                    "Facebook URL",
                    style: Configuration.primaryFont(
                      fontSize: 14.sp,
                      color: Colors.black87,
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
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 4.w,
              ),
              child: TextFormField(
                controller: facebook,
                cursorColor: Colors.black,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Facebook URL',
                  labelStyle: Configuration.primaryFont(
                    fontSize: 14.sp,
                    color: Colors.black54,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 4.w,
              ),
              child: Row(
                children: [
                  Text(
                    "Twitter URL",
                    style: Configuration.primaryFont(
                      fontSize: 14.sp,
                      color: Colors.black87,
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
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 4.w,
              ),
              child: TextFormField(
                controller: twitter,
                cursorColor: Colors.black,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Twitter URL',
                  labelStyle: Configuration.primaryFont(
                    fontSize: 14.sp,
                    color: Colors.black54,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 4.w,
              ),
              child: Row(
                children: [
                  Text(
                    "Instagram URL",
                    style: Configuration.primaryFont(
                      fontSize: 14.sp,
                      color: Colors.black87,
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
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 4.w,
              ),
              child: TextFormField(
                controller: instagram,
                cursorColor: Colors.black,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Instagram URL',
                  labelStyle: Configuration.primaryFont(
                    fontSize: 14.sp,
                    color: Colors.black54,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            SizedBox(
              height: 2.5.h,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 5.w,
              ),
              child: Configuration.rectangleButton(
                  onPressed: () {
                    try {
                      updateSocialData(context);
                    } catch (e) {
                      updateSocialData(context);
                    }
                  },
                  text: "Save",
                  fontSize: 15.sp,
                  fontColor: Colors.black,
                  bgColor: Configuration.primaryColor),
            ),
          ],
        ),
      ),
    );
  }

  void updateSocialData(BuildContext context) async {
    final id = Provider.of<Repository>(context, listen: false)
        .memberData
        ?.personalDetails
        .memberId;
    final response = await ApiService.instance(context).updateSocialDetails(
        context,
        id,
        whatsapp.text,
        facebook.text,
        twitter.text,
        instagram.text);
    if (response.status == 1) {
      whatsapp.text = response.data.member.first.alternateNumber ?? "";
      facebook.text = response.data.member.first.facebookUrl ?? "";
      twitter.text = response.data.member.first.twitterUrl ?? "";
      instagram.text = response.data.member.first.instagramUrl ?? "";
      setState(() {});
      CustomToast.showSuccessToast(
        context,
        "Information Updated",
        response.message,
      );
      fetchProfileData(context);
    } else {
      errorMessages = Map.fromEntries((response.data?.errors?.entries ?? [])
          .map((entry) => MapEntry(entry.key, entry.value)));
      setState(() {});
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: response.data?.errors?.isEmpty ?? true
              ? Text(response.message ?? 'An error occurred')
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Please check the following:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    ...response.data?.errors?.entries
                            .map((error) => Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Row(
                                    children: [
                                      const Icon(Icons.error_outline,
                                          size: 16, color: Colors.white70),
                                      SizedBox(width: 8),
                                      Expanded(
                                        child: Text(
                                          '${error.value}',
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ),
                                    ],
                                  ),
                                ))
                            .toList() ??
                        [const Text('An error occurred')]
                  ],
                ),
          backgroundColor: response.data?.errors?.isEmpty ?? true
              ? Colors.green
              : Colors.red.shade700,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          duration: const Duration(seconds: 5),
          margin: const EdgeInsets.all(8),
        ),
      );
    }
  }

  void fetchProfileData(BuildContext context) async {
    final response = await ApiService.instance(context).getProfileData(context);
    if (response.status == 1) {
      Provider.of<Repository>(context, listen: false)
          .setProfileData(response.data!.profileData);
      Provider.of<Repository>(context, listen: false)
          .setSocialData(response.data!.socialDetails);
    }
  }
}
