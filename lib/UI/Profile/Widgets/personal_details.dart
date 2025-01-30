import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dropdown_search/dropdown_search.dart';
// import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:flutter_svprogresshud/flutter_svprogresshud.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:uppl/Constants/configuration.dart';
import 'package:uppl/Repository/repository.dart';

import '../../../API/api_services.dart';
import '../../../Helper/toast.dart';
import '../../../Models/Member/member_details_model.dart';

class PersonalDetailsScreen extends StatefulWidget {
  PersonalDetailsScreen({super.key});

  @override
  _PersonalDetailsScreenState createState() => _PersonalDetailsScreenState();
}

class _PersonalDetailsScreenState extends State<PersonalDetailsScreen> {
  String? selectedTitle;
  final List<String> titleOptions = [
    "Mr.",
    "Miss",
    "Mrs."
  ]; // Defined valid options
  final List<String> genderOptions = ["Male", "Female", "Others"];
  int selectedGender = 0;
  bool agree = false;
  File? file;
  final mobileController = TextEditingController();
  final fullname = TextEditingController();
  final dob = TextEditingController();
  final email = TextEditingController();
  final voterId = TextEditingController();
  final aadharId = TextEditingController();
  final otherEducation = TextEditingController();
  final otherProfession = TextEditingController();
  String? religion,
      cast,
      profession,
      education,
      motherTongue,
      community,
      otherCommunity;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      fetchProfileData(context);
      // fetchData();
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
              height: 1.h,
            ),
            Text(
              "Update Personal Details",
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
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Consumer<Repository>(
                  builder:
                      (BuildContext context, Repository data, Widget? child) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Configuration.primaryColor,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                        ),
                        image: (data.memberData?.membershipCardData.photo !=
                                null)
                            ? DecorationImage(
                                image: CachedNetworkImageProvider(
                                    data.memberData?.membershipCardData.photo ??
                                        ""))
                            : (file == null
                                ? null
                                : DecorationImage(
                                    image: Image.file(file!).image)),
                      ),
                      height: 22.w,
                      width: 22.w,
                    );
                  },
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: () {
                      pickUpFile();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      padding: EdgeInsets.all(0.3.w),
                      child: Icon(
                        Icons.edit_note,
                        color: Colors.white,
                        size: 5.w, // Adjust size as needed
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 0.5.h,
            ),
            GestureDetector(
              onTap: () {
                pickUpFile();
              },
              child: Text(
                "Upload",
                style: Configuration.primaryFont(
                  fontSize: 14.sp,
                  color: Colors.black87,
                  // fontWeight: FontWeight.bold,
                  // Add other text styling as needed
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 6.w,
              ),
              child: Divider(
                color: const Color(0xffC5C5C5),
                thickness: 0.3.w,
              ),
            ),
            SizedBox(
              height: 0.5.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 6.w,
              ),
              child: TextFormField(
                controller: mobileController,
                cursorColor: Colors.black,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Mobile Number',
                  prefixIcon: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("+91"),
                    ],
                  ),
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
              height: 0.5.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 6.w,
              ),
              child: Divider(
                color: const Color(0xffC5C5C5),
                thickness: 0.3.w,
              ),
            ),
            SizedBox(
              height: 0.5.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 6.w,
              ),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black87,
                  ),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 2.w,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 15.w,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: selectedTitle,
                          isExpanded: true,
                          items: titleOptions
                              .map(
                                (e) => DropdownMenuItem<String>(
                                  value: e,
                                  child: Text(
                                    e,
                                    style: Configuration.primaryFont(
                                      fontSize: 16.sp,
                                      color: Configuration.secondaryColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                          onChanged: (String? val) {
                            setState(() {
                              selectedTitle = val;
                            });
                          },
                          style: Configuration.primaryFont(
                            fontSize: 16.sp,
                            color: Configuration.secondaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    VerticalDivider(
                      color: Colors.black,
                      thickness: 0.3.w,
                      width: 1,
                    ),
                    SizedBox(
                      width: 65.w,
                      child: TextFormField(
                        controller: fullname,
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Full Name',
                          hintStyle: Configuration.primaryFont(
                            fontSize: 16.sp,
                            color: Configuration.secondaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          prefix: Text(""),
                        ),
                        style: Configuration.primaryFont(
                          fontSize: 16.sp,
                          color: Configuration.secondaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 6.w,
              ),
              child: SizedBox(
                height: 7.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 50.w,
                      child: GestureDetector(
                        onTap: datePicker,
                        child: AbsorbPointer(
                          child: TextFormField(
                            controller: dob,
                            cursorColor: Colors.black,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              labelText: 'D.O.B',
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
                      ),
                    ),
                    SizedBox(
                      width: 30.w,
                      child: TextFormField(
                        controller: TextEditingController()
                          ..text = _calculateAge(dob.text).toString(),
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'Age',
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
                        style: Configuration.primaryFont(
                          fontSize: 16.sp,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                        ),
                        readOnly: true,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.circle,
                    size: 12.sp,
                    color: Colors.black54,
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  SizedBox(
                    width: 70.w,
                    child: Text(
                      "To update your DOB, Call on 1234567890 or Mail on dob.membership@upplofficial.org",
                      style: Configuration.primaryFont(
                        fontSize: 12.sp,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 6.w,
              ),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  // color: Color(0xffFFFAC2),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 3.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Gender*",
                      style: Configuration.primaryFont(
                        fontSize: 16.sp,
                        color: Configuration.secondaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    SizedBox(
                      height: 5.h,
                      child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          var item = genderOptions[index];
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedGender = index;
                              });
                            },
                            child: Container(
                              width: 25.w,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black54,
                                ),
                                borderRadius: BorderRadius.circular(25),
                                color: selectedGender == index
                                    ? Configuration.primaryColor
                                    : Colors.white,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 4.w,
                                vertical: 0.5.h,
                              ),
                              child: Center(
                                child: Text(
                                  item,
                                  style: Configuration.primaryFont(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: 2.w,
                          );
                        },
                        itemCount: 3,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 6.w,
              ),
              child: TextFormField(
                controller: email,
                cursorColor: Colors.black,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Email',
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
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 6.w,
              ),
              child: Divider(
                color: const Color(0xffC5C5C5),
                thickness: 0.3.w,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 1.h,
              ),
              child: Row(
                children: [
                  Text(
                    "Religion*",
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
            Consumer<Repository>(
              builder: (context, data, _) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.w),
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Select Your Religion*',
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
                    items: data.religions
                        .map((religion) => DropdownMenuItem(
                              value: religion,
                              child: Text(
                                religion,
                                style: Configuration.primaryFont(
                                  fontSize: 16.sp,
                                  color: Colors.black,
                                ),
                              ),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        religion = value;
                      });
                    },
                    value: religion,
                  ),
                );
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 1.h,
              ),
              child: Row(
                children: [
                  Text(
                    "Cast/Category*",
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
            Consumer<Repository>(
              builder: (context, data, _) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.w),
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Select Your Cast/Category*',
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
                    items: data.categories
                        .map((category) => DropdownMenuItem(
                              value: category,
                              child: Text(
                                category,
                                style: Configuration.primaryFont(
                                  fontSize: 16.sp,
                                  color: Colors.black,
                                ),
                              ),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        cast = value;
                      });
                    },
                    value: cast,
                  ),
                );
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 1.h,
              ),
              child: Row(
                children: [
                  Text(
                    "Profession",
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
            Consumer<Repository>(builder: (context, data, _) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 6.w,
                ),
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Select Your Profession',
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
                  items: data.professions
                      .map((profession) => DropdownMenuItem(
                            value: profession,
                            child: Text(
                              profession,
                              style: Configuration.primaryFont(
                                fontSize: 16.sp,
                                color: Colors.black,
                              ),
                            ),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      profession = value;
                    });
                  },
                  value: profession,
                ),
              );
            }),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 1.h,
              ),
              child: Row(
                children: [
                  Text(
                    "Education",
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
            Consumer<Repository>(builder: (context, Repository data, _) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 6.w,
                ),
                child: DropdownSearch<String>(
                  items: (String filter, _) async {
                    return data.educationLevels
                            ?.where((level) => level
                                .toLowerCase()
                                .contains(filter.toLowerCase()))
                            .toList() ??
                        [];
                  },
                  popupProps: PopupProps.menu(
                    showSearchBox: true,
                    searchFieldProps: const TextFieldProps(
                      decoration: InputDecoration(
                        hintText: 'Search education...',
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                    showSelectedItems: true,
                    disabledItemFn: (String s) => s.startsWith('I'),
                  ),
                  decoratorProps: DropDownDecoratorProps(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Enter Your Education',
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
                  onChanged: (value) {
                    setState(() {
                      education = value;
                    });
                  },
                  selectedItem: education,
                ),
              );
            }),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 1.h,
              ),
              child: Row(
                children: [
                  Text(
                    "Mother Tongue*",
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
            Consumer<Repository>(builder: (context, data, _) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 6.w,
                ),
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Enter Your Mother Tongue*',
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
                  items: data.motherTounge
                      .map((tounge) => DropdownMenuItem(
                            value: tounge,
                            child: Text(
                              tounge,
                              style: Configuration.primaryFont(
                                fontSize: 16.sp,
                                color: Colors.black,
                              ),
                            ),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      motherTongue = value;
                    });
                  },
                  value: motherTongue,
                ),
              );
            }),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 1.h,
              ),
              child: Row(
                children: [
                  Text(
                    "Community*",
                    style: Configuration.primaryFont(
                      fontSize: 14.sp,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Consumer<Repository>(builder: (context, data, _) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 6.w,
                ),
                child: Column(
                  children: [
                    DropdownButtonFormField<String>(
                      isExpanded: true,
                      // Add this to prevent overflow
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Enter Your Community*',
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
                      items: data.community
                          .map((community) => DropdownMenuItem<String>(
                                value: community,
                                child: Text(
                                  community,
                                  overflow: TextOverflow.ellipsis,
                                  style: Configuration.primaryFont(
                                    fontSize: 16.sp,
                                    color: Colors.black,
                                  ),
                                ),
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          community = "$value";
                          if (value != 'Other') {
                            otherCommunity = null;
                          }
                        });
                      },
                      value: community,
                    ),
                    if (community == 'Other')
                      Padding(
                        padding: EdgeInsets.only(top: 1.h),
                        child: TextFormField(
                          onChanged: (value) {
                            setState(() {
                              otherCommunity = value;
                            });
                          },
                          initialValue: otherCommunity,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            labelText: 'Enter Other Community*',
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
                  ],
                ),
              );
            }),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 1.h,
              ),
              child: Row(
                children: [
                  Text(
                    "Voter Id*",
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
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 6.w,
              ),
              child: TextFormField(
                controller: voterId,
                cursorColor: Colors.black,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Enter Your Voter Id*',
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
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 1.h,
              ),
              child: Row(
                children: [
                  Text(
                    "Aadhar",
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
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 6.w,
              ),
              child: TextFormField(
                controller: aadharId,
                cursorColor: Colors.black,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Enter Your Aadhar',
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
            if (profession == 'Other')
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical: 1.h,
                ),
                child: Row(
                  children: [
                    Text(
                      "Other Profession*",
                      style: Configuration.primaryFont(
                        fontSize: 14.sp,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            if (profession == 'Other')
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 6.w,
                ),
                child: TextFormField(
                  controller: otherProfession,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Enter Other Profession*',
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
            if (education == 'Other')
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical: 1.h,
                ),
                child: Row(
                  children: [
                    Text(
                      "Other Education",
                      style: Configuration.primaryFont(
                        fontSize: 14.sp,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            if (education == 'Other')
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 6.w,
                ),
                child: TextFormField(
                  controller: otherEducation,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Enter Other Education',
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
              height: 4.h,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 5.w,
              ),
              child: Configuration.rectangleButton(
                  onPressed: () {
                    if (fullname.text.isEmpty) {
                      CustomToast.showWarningToast(context,
                          "Missing Information", "Please enter your full name");
                    } else if (dob.text.isEmpty) {
                      CustomToast.showWarningToast(
                          context,
                          "Missing Information",
                          "Please select your date of birth");
                    } else if (voterId.text.isEmpty) {
                      CustomToast.showWarningToast(context,
                          "Missing Information", "Please enter your voter ID");
                    } else if (email.text.isNotEmpty &&
                        !isValidEmail(email.text)) {
                      CustomToast.showWarningToast(context, "Invalid Format",
                          "Please enter a valid email address");
                    } else if (!isValidMobile(mobileController.text)) {
                      CustomToast.showWarningToast(context, "Invalid Format",
                          "Please enter a valid 10 digit mobile number");
                    } else if (motherTongue == null) {
                      CustomToast.showWarningToast(
                          context,
                          "Missing Information",
                          "Please select your mother tongue");
                    } else if (religion == null) {
                      CustomToast.showWarningToast(context,
                          "Missing Information", "Please select your religion");
                    } else if (cast == null) {
                      CustomToast.showWarningToast(
                          context,
                          "Missing Information",
                          "Please select your caste/category");
                    } else if (profession == 'Other' &&
                        otherProfession.text.isEmpty) {
                      CustomToast.showWarningToast(
                          context,
                          "Missing Information",
                          "Please specify your other profession");
                    } else if (education == 'Other' &&
                        otherEducation.text.isEmpty) {
                      CustomToast.showWarningToast(
                          context,
                          "Missing Information",
                          "Please specify your other education");
                    } else {
                      saveDetails();
                    }
                  },
                  text: "Save",
                  fontSize: 15.sp,
                  fontColor: Colors.black,
                  bgColor: Configuration.primaryColor),
              // child: SwipeButton.expand(
              //   thumb: const Icon(
              //     Icons.double_arrow_rounded,
              //     color: Colors.white,
              //   ),
              //   activeThumbColor: Configuration.thirdColor,
              //   activeTrackColor: Configuration.primaryColor,
              //   inactiveTrackColor: Colors.white,
              //   onSwipe: () {
              //     if (fullname.text.isNotEmpty &&
              //         dob.text.isNotEmpty &&
              //         voterId.text.isNotEmpty &&
              //         (email.text.isEmpty || isValidEmail(email.text)) &&
              //         isValidMobile(mobileController.text) &&
              //         motherTongue != null &&
              //         religion != null &&
              //         cast != null &&
              //         (profession != 'Other' ||
              //             otherProfession.text.isNotEmpty) &&
              //         (education != 'Other' ||
              //             otherEducation.text.isNotEmpty)) {
              //       saveDetails();
              //     } else {
              //       String errorMessage =
              //           "Please enter all the required information";
              //       if (!isValidEmail(email.text)) {
              //         errorMessage += "\nInvalid email address";
              //       }
              //       if (!isValidMobile(mobileController.text)) {
              //         errorMessage += "\nInvalid mobile number";
              //       }
              //       CustomToast.showWarningToast(context,
              //           "Incomplete or Invalid Information", errorMessage);
              //     }
              //   },
              //   child: Text(
              //     "Save",
              //     style: Configuration.primaryFont(
              //       fontSize: 16.sp,
              //       color: Colors.black,
              //       fontWeight: FontWeight.bold,
              //       // Add other text styling as needed
              //     ),
              //   ),
              // ),
            ),
            SizedBox(
              height: 2.h,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> pickUpFile() async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          title: Text(
            "Choose an option",
            style: Configuration.primaryFont(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () async {
                  Navigator.of(context).pop();
                  final ImagePicker picker = ImagePicker();
                  final XFile? photo =
                      await picker.pickImage(source: ImageSource.camera);
                  if (photo != null) {
                    setState(() {
                      file = File(photo.path);
                    });
                  }
                },
                child: Text(
                  "Take a photo",
                  style: Configuration.primaryFont(
                      fontSize: 14.sp, color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Configuration.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () async {
                  Navigator.of(context).pop();
                  final ImagePicker picker = ImagePicker();
                  final XFile? image =
                      await picker.pickImage(source: ImageSource.gallery);
                  if (image != null) {
                    setState(() {
                      file = File(image.path);
                    });
                  }
                },
                child: Text(
                  "Choose from gallery",
                  style: Configuration.primaryFont(
                      fontSize: 14.sp, color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Configuration.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void datePicker() async {
    DatePicker.showDatePicker(context,
        showTitleActions: true,
        maxTime: DateTime.now().subtract(const Duration(days: 6574)),
        onChanged: (date) {
      print('change $date');
    }, onConfirm: (date) {
      setState(() {
        dob.text = DateFormat("dd-MM-yyyy").format(date);
      });
    });
  }

  int _calculateAge(String dateString) {
    if (dateString.isEmpty) return 0;

    DateTime birthDate = DateFormat("dd-MM-yyyy").parse(dateString);
    DateTime today = DateTime.now();

    int age = today.year - birthDate.year;

    if (today.month < birthDate.month ||
        (today.month == birthDate.month && today.day < birthDate.day)) {
      age--;
    }

    return age;
  }

  void saveDetails() async {
    debugPrint("Saving details $profession");
    final data = Provider.of<Repository>(context, listen: false)
        .memberData
        ?.personalDetails;
    final response = await ApiService.instance(context).updatePersonalDetails(
      data?.memberId,
      fullname.text,
      email.text,
      DateFormat("yyyy-MM-dd").format(DateFormat("dd-MM-yyyy").parse(dob.text)),
      selectedGender,
      Provider.of<Repository>(context, listen: false)
          .religions
          .indexWhere((e) => e == religion),
      cast == null
          ? 0
          : Provider.of<Repository>(context, listen: false)
                  .categories
                  .indexWhere((e) => e == cast) +
              1,
      profession == null
          ? 0
          : Provider.of<Repository>(context, listen: false)
              .professions
              .indexWhere((e) => e == profession),
      Provider.of<Repository>(context, listen: false)
          .educationLevels
          .indexWhere((e) => e == education),
      aadharId.text ?? "",
      voterId.text,
      Provider.of<Repository>(context, listen: false)
          .motherTounge
          .indexWhere((e) => e == motherTongue),
      otherProfession.text,
      otherEducation.text,
      Provider.of<Repository>(context, listen: false)
          .community
          .indexWhere((e) => e == community),
      otherCommunity,
      context,
    );
    if (response.status == 1) {
      CustomToast.showSuccessToast(
        context,
        "Information Updated",
        response.message,
      );
      fetchData();
    } else {
      CustomToast.showFailureToast(
        context,
        "Something Went Wrong",
        response.message,
      );
    }
  }

  bool isValidEmail(String email) {
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegExp.hasMatch(email);
  }

  bool isValidMobile(String mobile) {
    final mobileRegExp = RegExp(r'^[0-9]{10}$');
    return mobileRegExp.hasMatch(mobile);
  }

  void fetchData() async {
    final responseJson =
        await ApiService.instance(context).getMemberDetails(context);
    if (responseJson.status == 1) {
      Provider.of<Repository>(context, listen: false)
          .setData(responseJson.data as MemberDetailsData);
      setData();
    }
  }

  void setData() {
    final data = Provider.of<Repository>(context, listen: false).memberData;
    setState(() {
      mobileController.text = data?.personalDetails.mobileNo ?? "";
      fullname.text = data?.personalDetails.name ?? "";
      email.text = data?.personalDetails.email ?? "";
      voterId.text = data?.personalDetails.voterId ?? "";
      aadharId.text = data?.personalDetails.aadhaarNo ?? "";
      if (data?.personalDetails.dateOfBirth != null &&
          data?.personalDetails.dateOfBirth != "") {
        dob.text = DateFormat("dd-MM-yyyy")
            .format(DateTime.parse(data!.personalDetails.dateOfBirth))
            .toString();
      }
      if (data?.personalDetails.gender != null) {
        selectedTitle = data?.personalDetails.gender == 1 ? "Mr." : "Miss.";
        selectedGender = (data?.personalDetails.gender ?? 1) - 1;
      }
      if (data?.personalDetails.community != null ||
          (data?.personalDetails.other_community ?? "").isNotEmpty) {
        community = data?.personalDetails.community;
        otherCommunity = (data?.personalDetails.other_community);
      }
      if (data?.personalDetails.religion != null) {
        religion = Provider.of<Repository>(context, listen: false)
            .religions[data?.personalDetails.religion ?? 0];
      }
      if (data?.personalDetails.category != null) {
        debugPrint(
            "Category: ${Provider.of<Repository>(context, listen: false).categories[(data?.personalDetails.category ?? 0)]}");
        cast = Provider.of<Repository>(context, listen: false)
            .categories[(data?.personalDetails.category ?? 0) - 1];
      }
      if (data?.personalDetails.profession != null) {
        profession = Provider.of<Repository>(context, listen: false)
            .professions[data?.personalDetails.profession ?? 0];
      }
      if (data?.personalDetails.education != null) {
        education = Provider.of<Repository>(context, listen: false)
            .educationLevels[data?.personalDetails.education ?? 0];
      }
      if (Provider.of<Repository>(context, listen: false)
              .profileData
              ?.motherTounge !=
          null) {
        motherTongue = Provider.of<Repository>(context, listen: false)
            .motherTounge[Provider.of<Repository>(context, listen: false)
                .profileData
                ?.motherTounge ??
            0];
      }
      otherProfession.text = Provider.of<Repository>(context, listen: false)
              .personalDetails
              ?.otherProfession ??
          "";
      otherEducation.text = Provider.of<Repository>(context, listen: false)
              .personalDetails
              ?.otherEducation ??
          "";
    });
  }

  void fetchProfileData(BuildContext context) async {
    SVProgressHUD.show();
    final responseJson =
        await ApiService.instance(context).getMemberDetails(context);
    if (responseJson.status == 1) {
      Provider.of<Repository>(context, listen: false)
          .setData(responseJson.data as MemberDetailsData);
      setState(() {});
      SVProgressHUD.dismiss();
    } else {
      SVProgressHUD.dismiss();
    }
    SVProgressHUD.show();
    final response = await ApiService.instance(context).getProfileData(context);
    if (response.status == 1) {
      Provider.of<Repository>(context, listen: false)
          .setProfileData(response.data!.profileData);
      Provider.of<Repository>(context, listen: false)
          .setSocialData(response.data!.socialDetails);
      Provider.of<Repository>(context, listen: false)
          .setPersonalData(response.data!.personalDetails);
      setData();
      setState(() {});
      SVProgressHUD.dismiss();
    } else {
      SVProgressHUD.dismiss();
    }
  }
}
