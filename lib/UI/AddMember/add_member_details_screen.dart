
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:sizer/sizer.dart';
import 'package:uppl/Constants/routes.dart';
import 'package:uppl/Navigation/Router/app_router.dart';

import '../../Constants/configuration.dart';

@RoutePage()
class AddMemberDetailsScreen extends StatefulWidget {
  const AddMemberDetailsScreen({super.key});

  @override
  State<AddMemberDetailsScreen> createState() => _AddMemberDetailsScreenState();
}

class _AddMemberDetailsScreenState extends State<AddMemberDetailsScreen> {
  String? selectedTitle;
  final List<String> titleOptions = [
    "Mr.",
    "Miss",
    "Mrs."
  ]; // Defined valid options
  final List<String> genderOptions = ["Female", "Male", "Others"];
  int selectedGender = 1;
  bool agree = false;

  @override
  void initState() {
    super.initState();
    selectedTitle ??= titleOptions.first;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Configuration.homeBgColor,
      appBar: Configuration.appBar,
      body: Container(
        padding: EdgeInsets.symmetric(
        ),
        decoration: const BoxDecoration(
          gradient: Configuration.bgDetailsGradient,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 6.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Provide Details",
                      style: Configuration.primaryFont(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 6.w,
                ),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Configuration.primaryColor,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      height: 25.w,
                      width: 25.w,
                    ),
                    Positioned(
                      top: 8.5.h,
                      right: 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Configuration.secondaryColor,
                        ),
                        child: Icon(
                          Icons.edit_note,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 6.w,
                ),
                child: Column(
                  children: [
                    Text(
                      "Upload Photo",
                      style: Configuration.primaryFont(
                        color: Colors.black,
                        fontSize: 13.sp,
                      ),
                    ),
                    Text(
                      "(Photo must be less than 2MB)",
                      style: Configuration.primaryFont(
                        color: Colors.black,
                        fontSize: 11.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 1.h,
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
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Mobile Number',
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
                      VerticalDivider(
                        color: Colors.black,
                        thickness: 0.3.w,
                        width: 1,
                      ),
                      SizedBox(
                        width: 65.w,
                        child: TextFormField(
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.phone,
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
                        child: TextFormField(
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
                      SizedBox(
                        width: 30.w,
                        child: TextFormField(
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            labelText: 'Age',
                            labelStyle: Configuration.primaryFont(
                              fontSize: 14.sp,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
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
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 6.w,
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffFFFAC2),
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
                            itemCount: 3),
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
              SizedBox(
                height: 1.h,
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
                height: 1.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 6.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Add Address",
                      style: Configuration.primaryFont(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 6.w,
                ),
                child: TextFormField(
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Pin Code',
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
                height: 1.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 6.w,
                ),
                child: TextFormField(
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'BTC Constituency',
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
                        width: 45.w,
                        child: TextFormField(
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            labelText: 'District*',
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
                        width: 40.w,
                        child: TextFormField(
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            labelText: 'Party District *',
                            labelStyle: Configuration.primaryFont(
                              fontSize: 14.sp,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
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
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 6.w,
                ),
                child: TextFormField(
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Assembly Constituency',
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
                height: 1.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 6.w,
                ),
                child: TextFormField(
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Primary',
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
                height: 1.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 6.w,
                ),
                child: TextFormField(
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Booth',
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
                height: 1.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 6.w,
                ),
                child: TextFormField(
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Village',
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
                height: 1.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 6.w,
                ),
                child: TextFormField(
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Voter ID',
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
                  horizontal: 6.w,
                ),
                child: Divider(
                  color: const Color(0xffC5C5C5),
                  thickness: 0.3.w,
                ),
              ),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 3.w,
                  vertical: 1.h,
                ),
                child: Column(
                  children: [
                    Text(
                      'Referred by (Only a Primary Member can refer)',
                      style: Configuration.primaryFont(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.bold,
                        color: Configuration.subTextColor,
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    TextField(
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Mobile Number/Referal Code",
                        hintStyle: Configuration.primaryFont(
                          fontSize: 13.sp,
                          color: Colors.black87,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            color: Colors.black54,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            color: Colors.black54,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        suffix: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 2.w,
                            vertical: 0.2.h,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Configuration.primaryColor,
                          ),
                          child: Text(
                            "Validate",
                            style: Configuration.primaryFont(
                              fontSize: 13.sp,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                      style: Configuration.primaryFont(
                        fontSize: 13.sp,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 8.w,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 6.w,
                      child: Checkbox(
                          fillColor: WidgetStateProperty.all(
                            Colors.white,
                          ),
                          value: agree,
                          activeColor: Colors.white,
                          checkColor: Configuration.thirdColor,
                          onChanged: (val) {
                            setState(() {
                              agree = val ?? false;
                            });
                          }),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    SizedBox(
                      width: 70.w,
                      child: Text(
                        "I pledge and willing to receive regular updates from UPPL",
                        style: Configuration.primaryFont(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold,
                          color: Configuration.subTextColor,
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
                  horizontal: 5.w,
                ),
                child: SwipeButton.expand(
                  thumb: const Icon(
                    Icons.double_arrow_rounded,
                    color: Colors.white,
                  ),
                  activeThumbColor: Configuration.thirdColor,
                  activeTrackColor: Configuration.primaryColor,
                  inactiveTrackColor: Colors.white,
                  onSwipe: () {
                    AutoRouter.of(context).pushNamed(CustomRoutes.saveMemberDetailsScreen);
                  },
                  child: Text(
                    "Save",
                    style:  Configuration.primaryFont(
                      fontSize: 16.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      // Add other text styling as needed
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Configuration.primaryColor,
                ),
                padding: EdgeInsets.only(
                  top: 1.h,
                  bottom: 4.h,
                ),
                child: Center(
                  child: Text(
                    "Privacy policy | Disclaimer | Contact us",
                    style: Configuration.primaryFont(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
