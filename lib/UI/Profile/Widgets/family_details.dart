import 'dart:io';

import 'package:auto_route/auto_route.dart';
// import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:uppl/Constants/routes.dart';
import 'package:uppl/Helper/toast.dart';
import 'package:uppl/Repository/repository.dart';

import '../../../API/api_services.dart';
import '../../../Constants/configuration.dart';
import '../../../Navigation/Router/app_router.dart';

class FamilyDetailsScreen extends StatefulWidget {
  const FamilyDetailsScreen({super.key});

  @override
  _FamilyDetailsScreenState createState() => _FamilyDetailsScreenState();
}

class _FamilyDetailsScreenState extends State<FamilyDetailsScreen> {
  int selectedGender = 0; // Example state for demonstration
  final List<String> genderOptions = ["Male", "Female", "Others"];
  final name = TextEditingController();
  final mobile = TextEditingController();
  final voterID = TextEditingController();
  final aadhar = TextEditingController();
  final age = TextEditingController();
  final dob = TextEditingController();
  String? selectedRelationship;
  File? selectedFile;
  bool mobileValidated = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      fetchFamilyDetails(
          context,
          Provider.of<Repository>(context, listen: false)
              .memberData
              ?.personalDetails
              .memberId);
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
              "Add Family Members",
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
              children: [
                GestureDetector(
                  onTap: () {
                    pickUpFile();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Configuration.primaryColor,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black,
                      ),
                      image: selectedFile != null
                          ? DecorationImage(
                              image: FileImage(selectedFile!),
                            )
                          : null,
                    ),
                    height: 22.w,
                    width: 22.w,
                  ),
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
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      padding: EdgeInsets.all(2),
                      child: Icon(
                        Icons.edit,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 6.w,
              ),
              child: TextFormField(
                controller: name,
                cursorColor: Colors.black,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Add Family Member Name*',
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
            Container(
              decoration: const BoxDecoration(
                color: Color(0xffFFFAC2),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 3.w,
                vertical: 1.h,
              ),
              margin: EdgeInsets.symmetric(
                horizontal: 4.w,
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
                          itemCount: 3),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 1.h,
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
                    labelText: 'Relationship*',
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
                  value: selectedRelationship,
                  items: data.relationships.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    // Handle the selected value
                    setState(() {
                      selectedRelationship = newValue;
                    });
                  },
                ),
              );
            }),
            SizedBox(
              height: 1.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 6.w,
              ),
              child: TextFormField(
                controller: mobile,
                cursorColor: Colors.black,
                keyboardType: TextInputType.phone,
                onChanged: (val) {
                  setState(() {});
                },
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
                  suffixIcon: mobile.text.length == 10
                      ? IconButton(
                          icon: mobileValidated
                              ? const Icon(
                                  Icons.check_circle,
                                  color: Configuration.secondaryColor,
                                )
                              : const Icon(
                                  Icons.cancel,
                                  color: Colors.red,
                                ),
                          onPressed: () {
                            // Logic to validate the phone number
                            if (mobile.text.isNotEmpty) {
                              // Assuming a function `validatePhoneNumber` exists
                              validatePhoneNumber(mobile.text);
                            } else {
                              CustomToast.showFailureToast(context, "Error",
                                  "Please enter a mobile number");
                            }
                          },
                        )
                      : null,
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
                        controller: dob,
                        cursorColor: Colors.black,
                        readOnly: true,
                        onTap: () {
                          DatePicker.showDatePicker(
                            context,
                            showTitleActions: true,
                            maxTime: DateTime.now()
                                .subtract(const Duration(days: 6574)),
                            onChanged: (date) {},
                            onConfirm: (date) {
                              setState(() {
                                dob.text =
                                    DateFormat("dd-MM-yyyy").format(date);
                                age.text = "${_calculateAge(dob.text)}";
                              });
                            },
                            currentTime: DateTime.now(),
                            locale: LocaleType.en,
                          );
                        },
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'D.O.B*',
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
                      width: 35.w,
                      child: TextFormField(
                        controller: age,
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.number,
                        readOnly: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'Age*',
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
                controller: voterID,
                cursorColor: Colors.black,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Voter Id*',
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
                controller: aadhar,
                cursorColor: Colors.black,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Aadhar',
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
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 5.w,
              ),
              child: Configuration.rectangleButton(
                  onPressed: () {
                    if (name.text.isEmpty) {
                      CustomToast.showFailureToast(
                          context, "Error", "Please enter a name");
                    } else if (selectedRelationship == null) {
                      CustomToast.showFailureToast(
                          context, "Error", "Please select a relationship");
                    } else if (dob.text.isEmpty) {
                      CustomToast.showFailureToast(
                          context, "Error", "Please enter a date of birth");
                    } else if (mobile.text.isEmpty) {
                      CustomToast.showFailureToast(
                          context, "Error", "Please enter a mobile number");
                    } else if (!mobileValidated) {
                      CustomToast.showFailureToast(context, "Error",
                          "Please validate the mobile number");
                    } else {
                      addFamilyDetails(context);
                    }
                  },
                  text: "Save",
                  fontSize: 15.sp,
                  fontColor: Colors.black,
                  bgColor: Configuration.primaryColor),
            ),
            SizedBox(
              height: 1.h,
            ),
            const Divider(),
            SizedBox(
              height: 1.h,
            ),
            Consumer<Repository>(builder: (context, data, _) {
              return Table(
                defaultColumnWidth: FixedColumnWidth(26.w),
                children: [
                  for (var item in data.referredMembersFamilyDetails)
                    TableRow(
                      children: [
                        SizedBox(
                          width: 22.w,
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
                        SizedBox(
                          width: 15.w,
                          child: Center(
                            child: Text(
                              "${_calculateAge2(item.personalDetails.dateOfBirth)} Years",
                              style: Configuration.primaryFont(
                                fontSize: 14.sp,
                                color: Colors.black,
                                // fontWeight: FontWeight.bold,
                                // Add other text styling as needed
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Provider.of<Repository>(context, listen: false)
                                .setReferredMembersFamilyDetails(item);
                            AutoRouter.of(context)
                                .pushNamed(
                                    CustomRoutes.updateFamilyDetailsScreen)
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
                            FontAwesomeIcons.edit,
                            size: 17.sp,
                            color: Configuration.thirdColor,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            debugPrint("Clicked Here");
                            AutoRouter.of(context)
                                .push(ReferralFamilyViewDetailsMemberRoute(
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
                            size: 17.sp,
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
                ],
              );
            }),
            SizedBox(
              height: 2.h,
            ),
            // SizedBox(
            //   width: 85.w,
            //   child: Configuration.rectangleButton(
            //     onPressed: () {},
            //     text: 'Add Family',
            //     bgColor: Configuration.thirdColor,
            //     fontSize: 17.sp,
            //   ),
            // ),
            // SizedBox(
            //   height: 2.h,
            // ),
          ],
        ),
      ),
    );
  }

  void addFamilyDetails(BuildContext context) async {
    final data = Provider.of<Repository>(context, listen: false);
    final response = await ApiService.instance(context)
        .updateFamilyMemberPersonalDetails(
            context,
            null,
            data.memberData?.personalDetails.memberId,
            name.text,
            DateFormat("yyyy-mm-dd")
                .format(DateFormat("dd-mm-yyyy").parse(dob.text)),
            selectedGender,
            data.relationships.indexWhere((e) => e == selectedRelationship) + 1,
            mobile.text,
            selectedFile?.path,
            data.profileData?.refId,
            aadhar.text ?? "",
            voterID.text);
    if (response.status == 1) {
      CustomToast.showSuccessToast(
          context, "Information Added", response.message);
      fetchFamilyDetails(
          context,
          Provider.of<Repository>(context, listen: false)
              .memberData
              ?.personalDetails
              .memberId);
    } else {
      CustomToast.showFailureToast(
          context, "Something Went Wrong", response.message);
    }
  }

  void fetchFamilyDetails(BuildContext context, int? memberId) async {
    final response = await ApiService.instance(context)
        .getReferredFamilyDetails(context, memberId);
    debugPrint("Fetching family details");
    if (response.status == 1) {
      Provider.of<Repository>(context, listen: false)
          .setReferredMemberFamilyDetails(response.data.familyDetails);
    }
  }

  int _calculateAge(String dateString) {
    if (dateString.isEmpty) return 0;

    DateTime birthDate = DateFormat("dd-mm-yyyy").parse(dateString);
    DateTime today = DateTime.now();

    int age = today.year - birthDate.year;

    if (today.month < birthDate.month ||
        (today.month == birthDate.month && today.day < birthDate.day)) {
      age--;
    }

    return age;
  }

  int _calculateAge2(String dateString) {
    if (dateString.isEmpty) return 0;

    DateTime birthDate = DateFormat("yyyy-mm-dd").parse(dateString);
    DateTime today = DateTime.now();

    int age = today.year - birthDate.year;

    if (today.month < birthDate.month ||
        (today.month == birthDate.month && today.day < birthDate.day)) {
      age--;
    }

    return age;
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
                      selectedFile = File(photo.path);
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
                      selectedFile = File(image.path);
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

  Future<void> validatePhoneNumber(String text) async {
    final result =
        await AutoRouter.of(context).push(VerifiedRoute(mobile: text));
    // You can now handle 'result' based on its value if needed.
    if (result != null) {
      setState(() {
        mobileValidated = true;
        mobile.text = "$result";
      });
    }
  }
}
