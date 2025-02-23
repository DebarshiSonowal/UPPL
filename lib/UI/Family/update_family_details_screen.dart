import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
// import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:uppl/Constants/configuration.dart';
import 'package:uppl/Navigation/Router/app_router.dart';

import '../../API/api_services.dart';
import '../../Helper/toast.dart';
import '../../Repository/repository.dart';

@RoutePage()
class UpdateFamilyDetailsScreen extends StatefulWidget {
  const UpdateFamilyDetailsScreen({super.key});

  @override
  State<UpdateFamilyDetailsScreen> createState() =>
      _UpdateFamilyDetailsScreenState();
}

class _UpdateFamilyDetailsScreenState extends State<UpdateFamilyDetailsScreen> {
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

  @override
  void initState() {
    super.initState();

    name.text = '';
    mobile.text = '';
    voterID.text = '';
    aadhar.text = '';
    dob.text = '';
    age.text = '';
    selectedGender = 0;
    selectedRelationship = null;
    selectedFile = null;

    Future.delayed(Duration.zero, () {
      final selectedFamilyMember =
          Provider.of<Repository>(context, listen: false)
              .selectedReferredFamilyDetailsModel;
      debugPrint(
          "selectedFamilyMember ${selectedFamilyMember?.membershipCard.relationship}");
      if (selectedFamilyMember != null) {
        final personalDetails = selectedFamilyMember.personalDetails;
        final membershipCard = selectedFamilyMember.membershipCard;
        name.text = personalDetails.name ?? '';
        mobile.text = personalDetails.mobileNo ?? '';
        voterID.text = personalDetails.voterId ?? '';
        aadhar.text = personalDetails.aadhaarNo ?? '';

        if (personalDetails.dateOfBirth != null) {
          dob.text = personalDetails.dateOfBirth ?? '';
          age.text = _calculateAge2(personalDetails.dateOfBirth!).toString();
        }

        selectedGender = personalDetails.gender ?? 1;

        final relationships =
            Provider.of<Repository>(context, listen: false).relationships;
        final relationshipIndex = (membershipCard.relationship ?? 1) - 1;
        if (relationshipIndex >= 0 &&
            relationshipIndex < relationships.length) {
          selectedRelationship = relationships[relationshipIndex];
        }
        if (selectedFamilyMember.membershipCard.photo != null) {
          try {
            selectedFile = File(
                Uri.parse(selectedFamilyMember.membershipCard.photo!)
                    .toFilePath());
          } on Exception catch (e) {
            // TODO
          }
        }

        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Configuration.appBar,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Configuration.homeBgColor,
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Update Family Member Details",
                  style: Configuration.primaryFont(
                    fontSize: 18.sp,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 3.h),
              Center(
                child: Stack(
                  children: [
                    Consumer<Repository>(
                      builder: (context, data, _) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Configuration.primaryColor,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black54, width: 2),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 5,
                                offset: Offset(0, 2),
                              )
                            ],
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: selectedFile != null
                                  ? FileImage(selectedFile!)
                                  : CachedNetworkImageProvider(Provider.of<
                                                  Repository>(context,
                                              listen: false)
                                          .selectedReferredFamilyDetailsModel
                                          ?.membershipCard
                                          .photo ??
                                      "") as ImageProvider,
                            ),
                          ),
                          height: 25.w,
                          width: 25.w,
                        );
                      },
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: GestureDetector(
                        onTap: pickUpFile,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Configuration.primaryColor,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 2),
                          ),
                          child: Icon(Icons.camera_alt, size: 20),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 3.h),
              buildInputField(
                controller: name,
                label: 'Family Member Name*',
                keyboardType: TextInputType.name,
              ),
              SizedBox(height: 2.h),
              Container(
                padding: EdgeInsets.all(3.w),
                decoration: BoxDecoration(
                  color: Color(0xffFFFAC2),
                  borderRadius: BorderRadius.circular(10),
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
                    SizedBox(height: 1.h),
                    Row(
                      children: genderOptions.asMap().entries.map((entry) {
                        return Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 1.w),
                            child: GestureDetector(
                              onTap: () =>
                                  setState(() => selectedGender = entry.key),
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 1.h),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: selectedGender == entry.key
                                      ? Configuration.primaryColor
                                      : Colors.white,
                                  border: Border.all(color: Colors.black26),
                                ),
                                child: Center(
                                  child: Text(
                                    entry.value,
                                    style: Configuration.primaryFont(
                                      color: Colors.black,
                                      fontWeight: selectedGender == entry.key
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 2.h),
              Consumer<Repository>(
                builder: (context, data, _) => DropdownButtonFormField<String>(
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
                  ),
                  value: selectedRelationship,
                  items: data.relationships
                      .map((value) => DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          ))
                      .toList(),
                  onChanged: (value) =>
                      setState(() => selectedRelationship = value),
                ),
              ),
              SizedBox(height: 2.h),
              buildInputField(
                controller: mobile,
                label: 'Mobile Number',
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 2.h),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: buildInputField(
                      controller: dob,
                      label: 'Date of Birth*',
                      readOnly: true,
                      onTap: () {
                        DatePicker.showDatePicker(
                          context,
                          showTitleActions: true,
                          maxTime:
                              DateTime.now().subtract(Duration(days: 6574)),
                          onConfirm: (date) {
                            setState(() {
                              dob.text = DateFormat("dd-MM-yyyy").format(date);
                              age.text = "${_calculateAge(dob.text)}";
                            });
                          },
                          currentTime: DateTime.now(),
                          locale: LocaleType.en,
                        );
                      },
                    ),
                  ),
                  SizedBox(width: 2.w),
                  Expanded(
                    flex: 2,
                    child: buildInputField(
                      controller: age,
                      label: 'Age',
                      readOnly: true,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2.h),
              buildInputField(
                controller: voterID,
                label: 'Voter ID',
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.characters,
              ),
              SizedBox(height: 2.h),
              buildInputField(
                controller: aadhar,
                label: 'Aadhar Number*',
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 3.h),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
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
                    } else {
                      addFamilyDetails(context);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Configuration.primaryColor,
                    padding: EdgeInsets.symmetric(vertical: 2.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 2,
                  ),
                  child: Text(
                    "Update Details",
                    style: Configuration.primaryFont(
                      fontSize: 16.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 2.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInputField({
    required TextEditingController controller,
    required String label,
    TextInputType? keyboardType,
    bool readOnly = false,
    VoidCallback? onTap,
    TextCapitalization textCapitalization = TextCapitalization.none,
  }) {
    return TextFormField(
      controller: controller,
      cursorColor: Colors.black,
      keyboardType: keyboardType,
      readOnly: readOnly,
      onTap: onTap,
      textCapitalization: textCapitalization,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: label,
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
    );
  }

  Future<void> addFamilyDetails(BuildContext context) async {
    try {
      final data = Provider.of<Repository>(context, listen: false);
      final selectedMember = data.selectedReferredFamilyDetailsModel;
      final memberId = data.memberData?.personalDetails.memberId;

      final formattedDob = DateFormat("yyyy-MM-dd")
          .format(DateFormat("dd-MM-yyyy").parse(dob.text));

      final relationshipIndex =
          data.relationships.indexWhere((e) => e == selectedRelationship) + 1;

      final response = await ApiService.instance(context)
          .updateFamilyMemberPersonalDetails(
              context,
              selectedMember?.membershipCard.id,
              memberId,
              name.text,
              formattedDob,
              selectedGender,
              relationshipIndex,
              mobile.text,
              selectedFile?.path,
              memberId,
              aadhar.text,
              voterID.text);

      if (response.status == 1) {
        CustomToast.showSuccessToast(
            context, "Information Added", response.message);
        AutoRouter.of(context).popForced();
        return;
      }

      if (response.data?.errors?.keys.firstOrNull == "mobile_no") {
        final verificationResult = await AutoRouter.of(context)
            .push(VerifiedRoute(mobile: mobile.text));

        if (verificationResult != null) {
          await addFamilyDetails(context);
          return;
        }
      }

      String errorMessage = '';
      if (response.data?.errors != null) {
        for (var key in response.data!.errors!.keys) {
          final messages = response.data!.errors![key];
          if (messages != null && messages.isNotEmpty) {
            errorMessage += '${messages.join(", ")}\n';
          }
        }
        CustomToast.showFailureToast(
            context, "Validation Errors", errorMessage.trim());
      } else {
        CustomToast.showFailureToast(context, "Error", response.message);
      }
    } catch (e) {
      debugPrint("Error updating family details: $e");
      CustomToast.showFailureToast(
          context, "Error", "Failed to update family details");
    }
  }

  void fetchFamilyDetails(BuildContext context, int? memberId) async {
    final response = await ApiService.instance(context)
        .getReferredFamilyDetails(context, memberId);
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
}
