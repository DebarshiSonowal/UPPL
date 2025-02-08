import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:dropdown_search/dropdown_search.dart';
// import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:uppl/Constants/configuration.dart';
import 'package:uppl/Models/JSON/generate_json_model.dart';
import 'package:uppl/Repository/repository.dart';

import '../../API/api_services.dart';
import '../../Constants/routes.dart';
import '../../Helper/toast.dart';
import '../../Models/Referal/validate_referal_code_model.dart';

@RoutePage()
class ProvideDetailsScreen extends StatefulWidget {
  const ProvideDetailsScreen({super.key, required this.mobile});

  final String mobile;

  @override
  State<ProvideDetailsScreen> createState() => _ProvideDetailsScreenState();
}

class _ProvideDetailsScreenState extends State<ProvideDetailsScreen> {
  String? selectedTitle, otherVillage;
  int? selectedBtcConstituency,
      selectedDistrict,
      selectedPartyDistrict,
      selectedAssembly,
      selectedPrimary,
      selectedBooth,
      selectedVillage;
  final List<String> titleOptions = [
    "Mr.",
    "Miss",
    "Mrs."
  ]; // Defined valid options
  final List<String> genderOptions = ["Male", "Female", "Others"];
  int selectedGender = 0;
  bool agree = false;
  final mobile = TextEditingController();
  final address = TextEditingController();
  final name = TextEditingController();
  final dob = TextEditingController();
  final age = TextEditingController();
  final email = TextEditingController();
  final pincode = TextEditingController();
  final voterId = TextEditingController();
  final referral = TextEditingController();
  File? selectedFile;
  ValidateMemberData? selectedValidateMemberData;
  List<AssemblyConstituency> filteredAssemblyConstituencies = [];
  List<Constituency> listOfConstituencies = [];
  List<Primary> filteredPrimary = [];
  List<Booth> filteredBooth = [];
  List<District> filteredDistricts = [];
  List<PartyDistrict> filteredPartyDistricts = [];
  Constituency? currentConstituency;
  String? community, otherCommunity;
  Map<String, String> errorMessages = {};

  @override
  void initState() {
    super.initState();
    selectedTitle ??= titleOptions.first;
    Future.delayed(Duration.zero, () {
      mobile.text = widget.mobile;
      setState(() {});
      fetchDetails();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Configuration.appBar,
      body: Container(
        padding: EdgeInsets.symmetric(),
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
                      "Provide Your Details",
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
                                  fit: BoxFit.cover,
                                )
                              : null,
                        ),
                        height: 25.w,
                        width: 25.w,
                      ),
                    ),
                    Positioned(
                      top: 8.5.h,
                      right: 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Configuration.secondaryColor,
                        ),
                        child: const Icon(
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
                    GestureDetector(
                      onTap: () {
                        pickUpFile();
                      },
                      child: Text(
                        "Upload Photo",
                        style: Configuration.primaryFont(
                          color: Colors.black,
                          fontSize: 13.sp,
                        ),
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
              IgnorePointer(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.w,
                  ),
                  child: TextFormField(
                    controller: mobile,
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Mobile Number*',
                      errorText: errorMessages['mobile_number'],
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
                          controller: name,
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Full Name*',
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
                          controller: dob,
                          readOnly: true,
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            labelText: 'D.O.B*',
                            errorText: errorMessages['dob'],
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
                        ),
                      ),
                      SizedBox(
                        width: 30.w,
                        child: TextFormField(
                          readOnly: true,
                          controller: age,
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.phone,
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
                  controller: email,
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Email',
                    errorText: errorMessages['email'],
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
                      "Add Address*",
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
                  controller: address,
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.streetAddress,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Full Address*',
                    errorText: errorMessages['address'],
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
                  controller: pincode,
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Pin Code*',
                    errorText: errorMessages['pin_code'],
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
              Consumer<Repository>(builder: (context, data, _) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.w,
                  ),
                  child: DropdownSearch<String>(
                    items: (String filter, _) async {
                      return data.btcConstituency
                          .map((BTCConstituency value) => value.name)
                          .where((name) =>
                              name.toLowerCase().contains(filter.toLowerCase()))
                          .toList();
                    },
                    popupProps: PopupProps.menu(
                      showSearchBox: true,
                      searchFieldProps: const TextFieldProps(
                        decoration: InputDecoration(
                          hintText: 'Search BTC Constituency...',
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
                        labelText: 'BTC Constituency*',
                        errorText: errorMessages['btc_constituency'],
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
                    onChanged: (String? value) {
                      // "constituency_type": "ST",
                      //                         "assembly_constituency_id": 11,
                      //                         "district_id": 3,
                      //                         "party_district_id": 7,
                      setState(() {
                        selectedBtcConstituency = data.btcConstituency
                            .firstWhere(
                                (constituency) => constituency.name == value)
                            .id;
                        listOfConstituencies = data.btcAssemblyConstituencies[
                            data.btcConstituency.indexWhere(
                                (constituency) => constituency.name == value)];
                        filteredAssemblyConstituencies = data
                            .assemblyConstituencies
                            .where((e) => listOfConstituencies
                                .any((f) => f.assemblyConstituencyId == e.id))
                            .toList();
                        selectedAssembly = null;
                        selectedDistrict = null;
                        selectedPartyDistrict = null;
                        selectedBooth = null;
                        selectedPrimary = null;
                      });

                      // setState(() {
                      //   selectedDistrict = data.districts
                      //       .firstWhere((e) => e.id == selected.)
                      //       .id;
                      //   selectedPartyDistrict = data.partyDistricts
                      //       .firstWhere((e) => e.id == selected.id)
                      //       .id;
                      // });
                    },
                    selectedItem: selectedBtcConstituency != null
                        ? data.btcConstituency
                            .firstWhere(
                                (constituency) =>
                                    constituency.id == selectedBtcConstituency,
                                orElse: () => const BTCConstituency(
                                    id: 0, name: '', status: 0))
                            .name
                        : '',
                  ),
                );
              }),
              SizedBox(
                height: 1.h,
              ),
              Consumer<Repository>(builder: (context, data, _) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.w,
                  ),
                  child: DropdownSearch<String>(
                    items: (String filter, _) async {
                      return (filteredAssemblyConstituencies
                              .map((assembly) => assembly.name))
                          .where((name) =>
                              name.toLowerCase().contains(filter.toLowerCase()))
                          .toList();
                    },
                    popupProps: PopupProps.menu(
                      showSearchBox: true,
                      searchFieldProps: const TextFieldProps(
                        decoration: InputDecoration(
                          hintText: 'Search assembly...',
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
                        labelText: 'Assembly Constituency*',
                        errorText: errorMessages['constituency'],
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
                    onChanged: (String? value) {
                      setState(() {
                        final selectedAssemblyObj =
                            filteredAssemblyConstituencies.firstWhere(
                          (assembly) => assembly.name == value,
                          orElse: () => throw Exception("Assembly not found"),
                        );
                        currentConstituency = listOfConstituencies.firstWhere(
                            (e) =>
                                e.assemblyConstituencyId ==
                                selectedAssemblyObj.id);
                        debugPrint(
                            "selectedAssemblyObj ${selectedAssemblyObj.name}");
                        selectedAssembly = selectedAssemblyObj.id;
                        filteredDistricts = data.districts
                            .where((e) => listOfConstituencies
                                .any((f) => f.districtId == e.id))
                            .toList();
                        filteredPartyDistricts = data.partyDistricts
                            .where((e) => listOfConstituencies
                                .any((f) => f.partyDistrictId == e.id))
                            .toList();
                        selectedDistrict = listOfConstituencies
                            .firstWhere((constituency) =>
                                constituency.assemblyConstituencyId ==
                                selectedAssemblyObj.id)
                            .districtId;
                        selectedPartyDistrict = listOfConstituencies
                            .firstWhere((constituency) =>
                                constituency.assemblyConstituencyId ==
                                selectedAssemblyObj.id)
                            .partyDistrictId;
                        final assemblyConstituencyIds = listOfConstituencies
                            .map((constituency) =>
                                constituency.assemblyConstituencyId)
                            .toList();
                        debugPrint(
                            "Primaries $currentConstituency ! $selectedAssembly ${data.btcPrimariesList["${currentConstituency?.id}"]}");
                        filteredPrimary = data
                            .btcPrimariesList["${currentConstituency?.id}"]!
                            .toList();
                      });
                    },
                    selectedItem: selectedAssembly != null
                        ? filteredAssemblyConstituencies
                            .firstWhere(
                                (assembly) => assembly.id == selectedAssembly,
                                orElse: () =>
                                    const AssemblyConstituency(id: 0, name: ''))
                            .name
                        : "",
                  ),
                );
              }),

              SizedBox(
                height: 1.h,
              ),
              Consumer<Repository>(builder: (context, data, _) {
                return Padding(
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
                          child: DropdownButtonFormField<int>(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              labelText: 'District*',
                              errorText: errorMessages['district'],
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
                            items: filteredDistricts.map((District value) {
                              return DropdownMenuItem<int>(
                                value: value.id,
                                child: Text(value.name),
                              );
                            }).toList(),
                            onChanged: (int? newValue) {
                              setState(() {
                                selectedDistrict = newValue;
                              });
                            },
                            value: selectedDistrict,
                          ),
                        ),
                        SizedBox(
                          width: 40.w,
                          child: DropdownButtonFormField<int>(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              labelText: 'Party District *',
                              errorText: errorMessages['party_district'],
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
                            items: filteredPartyDistricts
                                .map((PartyDistrict value) {
                              return DropdownMenuItem<int>(
                                value: value.id,
                                child: Text(value.name),
                              );
                            }).toList(),
                            onChanged: (int? newValue) {
                              setState(() {
                                selectedPartyDistrict = newValue;
                              });
                            },
                            value: selectedPartyDistrict,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
              SizedBox(
                height: 1.h,
              ),
              Consumer<Repository>(builder: (context, data, _) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.w,
                  ),
                  child: DropdownSearch<String>(
                    items: (String filter, _) async {
                      return filteredPrimary
                          .map((Primary value) => value.name)
                          .where((name) =>
                              name.toLowerCase().contains(filter.toLowerCase()))
                          .toList();
                    },
                    popupProps: PopupProps.menu(
                      showSearchBox: true,
                      searchFieldProps: const TextFieldProps(
                        decoration: InputDecoration(
                          hintText: 'Search primary...',
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
                        labelText: 'Primary*',
                        errorText: errorMessages['primary'],
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
                    onChanged: (String? value) {
                      setState(() {
                        selectedPrimary = filteredPrimary
                            .firstWhere((primary) => primary.name == value)
                            .id;
                        filteredBooth = data.booths
                            .where((e) => e.btcPrimaryId == selectedPrimary)
                            .toList();
                      });
                    },
                    selectedItem: selectedPrimary != null
                        ? filteredPrimary
                            .firstWhere(
                                (primary) => primary.id == selectedPrimary,
                                orElse: () => Primary(
                                    id: 0,
                                    name: '',
                                    btcAssemblyConstituencyId: 0))
                            .name
                        : "",
                  ),
                );
              }),
              SizedBox(
                height: 1.h,
              ),
              Consumer<Repository>(builder: (context, data, _) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.w,
                  ),
                  child: DropdownSearch<String>(
                    items: (String filter, _) async {
                      return filteredBooth
                          .map((booth) => booth.name)
                          .where((name) =>
                              name.toLowerCase().contains(filter.toLowerCase()))
                          .toList();
                    },
                    popupProps: PopupProps.menu(
                      showSearchBox: true,
                      searchFieldProps: const TextFieldProps(
                        decoration: InputDecoration(
                          hintText: 'Search booth...',
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
                        labelText: 'Booth*',
                        errorText: errorMessages['booth'],
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
                    onChanged: (String? value) {
                      setState(() {
                        selectedBooth = filteredBooth
                            .firstWhere((booth) => booth.name == value)
                            .id;
                      });
                    },
                    selectedItem: selectedBooth != null
                        ? filteredBooth
                            .firstWhere((booth) => booth.id == selectedBooth,
                                orElse: () =>
                                    Booth(id: 0, name: '', btcPrimaryId: 0))
                            .name
                        : "",
                  ),
                );
              }),
              SizedBox(
                height: 1.h,
              ),
              Consumer<Repository>(builder: (context, data, _) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.w,
                  ),
                  child: Column(
                    children: [
                      DropdownSearch<String>(
                        items: (String filter, _) async {
                          var villageNames = data.villages
                              .map((village) => village.name)
                              .where((name) => name
                                  .toLowerCase()
                                  .contains(filter.toLowerCase()))
                              .toList();
                          villageNames.add("Other"); // Add "Other" option
                          return villageNames;
                        },
                        popupProps: PopupProps.menu(
                          showSearchBox: true,
                          searchFieldProps: const TextFieldProps(
                            decoration: InputDecoration(
                              hintText: 'Search village...',
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
                            labelText: 'Village*',
                            errorText: errorMessages['village'],
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
                        onChanged: (String? value) {
                          setState(() {
                            if (value == "Other") {
                              selectedVillage =
                                  0; // Some identifier for "Other"
                            } else {
                              selectedVillage = data.villages
                                  .firstWhere(
                                      (village) => village.name == value)
                                  .id;
                            }
                          });
                        },
                        selectedItem: selectedVillage == 0
                            ? "Other"
                            : selectedVillage != null
                                ? data.villages
                                    .firstWhere(
                                      (village) =>
                                          village.id == selectedVillage,
                                      orElse: () => const Village(
                                          id: 0, name: '', vcdc: ""),
                                    )
                                    .name
                                : "",
                      ),
                      if (selectedVillage == 0)
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: TextField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              labelText: 'Enter Village Name',
                              errorText: errorMessages['other_village'],
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
                            onChanged: (text) {
                              // Handle other village name entry
                              setState(() {
                                otherVillage = text;
                                // You could store the 'other' village name in a separate variable if needed
                              });
                            },
                          ),
                        ),
                    ],
                  ),
                );
              }),
              SizedBox(
                height: 1.h,
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
                          errorText: errorMessages['community'],
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
                              errorText: errorMessages['other_community'],
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
              SizedBox(
                height: 1.h,
              ),
              // Padding(
              //   padding: EdgeInsets.symmetric(
              //     horizontal: 6.w,
              //   ),
              //   child: TextFormField(
              //     controller: voterId,
              //     cursorColor: Colors.black,
              //     keyboardType: TextInputType.name,
              //     decoration: InputDecoration(
              //       filled: true,
              //       fillColor: Colors.white,
              //       labelText: 'Voter ID*',
              //       labelStyle: Configuration.primaryFont(
              //         fontSize: 14.sp,
              //         color: Colors.black54,
              //       ),
              //       border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(10),
              //       ),
              //       focusedBorder: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(10),
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 2.h,
              // ),
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
                      controller: referral,
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.number,
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
                        suffix: GestureDetector(
                          onTap: () {
                            if (selectedValidateMemberData == null &&
                                referral.text.isNotEmpty) {
                              verifyReferCode();
                            } else if (selectedValidateMemberData != null) {
                              setState(() {
                                selectedValidateMemberData = null;
                                referral.clear();
                              });
                              CustomToast.showWarningToast(context, "Info",
                                  "Validation canceled. You can enter a new code.");
                            } else {
                              CustomToast.showWarningToast(context, "Warning",
                                  "Please enter valid code");
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 2.w,
                              vertical: 0.2.h,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: selectedValidateMemberData == null
                                  ? Configuration.primaryColor
                                  : Colors.red,
                            ),
                            child: Text(
                              selectedValidateMemberData == null
                                  ? "Validate"
                                  : "Cancel",
                              style: Configuration.primaryFont(
                                fontSize: 13.sp,
                                color: Colors.black87,
                              ),
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
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: 5.w,
                ),
                child: Configuration.rectangleButton(
                  onPressed: () {
                    if (!_validateInputs()) {
                      if (selectedFile == null) {
                        CustomToast.showWarningToast(context, "Missing Photo",
                            "Please upload your photo");
                      } else if (selectedTitle == null) {
                        CustomToast.showWarningToast(context, "Missing Title",
                            "Please select your title (Mr./Mrs./Miss)");
                      } else if (name.text.isEmpty) {
                        CustomToast.showWarningToast(context, "Missing Name",
                            "Please enter your full name");
                      } else if (dob.text.isEmpty || age.text.isEmpty) {
                        CustomToast.showWarningToast(
                            context,
                            "Missing Date of Birth",
                            "Please enter your date of birth");
                      } else if (email.text.isNotEmpty &&
                          !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                              .hasMatch(email.text)) {
                        CustomToast.showWarningToast(context, "Invalid Email",
                            "Please enter a valid email address");
                      } else if (pincode.text.isEmpty ||
                          pincode.text.length != 6) {
                        CustomToast.showWarningToast(context, "Invalid Pincode",
                            "Please enter a valid 6-digit pincode");
                      } else if (selectedBtcConstituency == null ||
                          selectedDistrict == null ||
                          selectedPartyDistrict == null ||
                          selectedAssembly == null) {
                        CustomToast.showWarningToast(
                            context,
                            "Missing Location Details",
                            "Please select all required location fields");
                      } else if (selectedPrimary == null ||
                          selectedBooth == null) {
                        CustomToast.showWarningToast(
                            context,
                            "Missing Booth Details",
                            "Please select primary and booth");
                      } else if (!agree) {
                        CustomToast.showWarningToast(
                            context,
                            "Terms Not Accepted",
                            "Please accept the pledge to receive updates");
                      }
                    } else {
                      register(context);
                    }
                  },
                  text: "Save",
                  fontSize: 15.sp,
                  fontColor: Colors.black,
                  bgColor: Configuration.primaryColor,
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

  void register(BuildContext context) async {
    errorMessages = {};
    setState(() {});
    final response = await ApiService.instance(context).registration(
        mobile.text,
        name.text,
        DateFormat("yyyy-mm-dd")
            .format(DateFormat("dd-mm-yyyy").parse(dob.text)),
        selectedGender,
        email.text,
        address.text,
        pincode.text,
        selectedBtcConstituency!,
        selectedDistrict!,
        selectedPartyDistrict!,
        selectedAssembly!,
        selectedPrimary!,
        selectedBooth!,
        otherVillage ?? "",
        selectedVillage ?? "other",
        selectedValidateMemberData?.refId ?? 0,
        1,
        [selectedFile!.path],
        Provider.of<Repository>(context, listen: false)
            .community
            .indexOf(community!),
        otherCommunity,
        context);
    if (response.status == 1) {
      Provider.of<Repository>(context, listen: false)
          .setRegistrationData(response.data!);
      CustomToast.showSuccessToast(context, "Registered", response.message);
      context.router.pushNamed(CustomRoutes.savedDetailsScreen);
    } else {
      errorMessages = Map<String, String>.fromEntries(
        (response.data?.errors ?? {}).entries.map(
              (entry) => MapEntry(entry.key, entry.value.join(', ')),
            ),
      );
      setState(() {});
      final error = response.data?.errors?.values
              ?.map((e) => e.toString().replaceAll(RegExp(r'[\[\]]'), ''))
              .join('\n') ??
          '';
      if (error.isNotEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Row(
              children: [
                Icon(Icons.error, color: Colors.white),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    error,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            backgroundColor: Colors.redAccent,
            behavior: SnackBarBehavior.floating,
            duration: const Duration(seconds: 3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
        );
      }
    }

    //context.router.pushNamed(CustomRoutes.savedDetailsScreen);
  }

  bool _validateInputs() {
    if (selectedFile == null ||
        selectedTitle == null ||
        name.text.isEmpty ||
        dob.text.isEmpty ||
        age.text.isEmpty ||
        (email.text.isNotEmpty &&
            !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                .hasMatch(email.text)) ||
        pincode.text.isEmpty ||
        selectedBtcConstituency == null ||
        selectedDistrict == null ||
        selectedPartyDistrict == null ||
        selectedAssembly == null ||
        selectedPrimary == null ||
        selectedBooth == null ||
        (selectedVillage == null ||
            (selectedVillage == 0 &&
                (otherVillage == null || otherVillage!.isEmpty))) ||
        !agree) {
      debugPrint("Here");
      return false;
    }
    // if (selectedValidateMemberData == null) {
    //   return false;
    // }
    // Validate email format
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(email.text)) {
      return false;
    }

    // Validate pincode (assuming 6 digits)
    if (pincode.text.length != 6 || int.tryParse(pincode.text) == null) {
      return false;
    }

    // Validate voter ID (assuming it should be non-empty)

    return true;
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
                style: ElevatedButton.styleFrom(
                  backgroundColor: Configuration.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  "Take a photo",
                  style: Configuration.primaryFont(
                      fontSize: 14.sp, color: Colors.black),
                ),
              ),
              const SizedBox(height: 10),
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

  void verifyReferCode() async {
    try {
      final response = await ApiService.instance(context)
          .checkMobileOrCodeVerify(referral.text, context);
      if (response.status == 1) {
        selectedValidateMemberData = response.data;
        setState(() {});
        CustomToast.showSuccessToast(
            context, "Verification Done", response.message);
      } else {
        CustomToast.showFailureToast(
            context, "Verification Failed", response.message);
      }
    } catch (e) {
      print(e);
      CustomToast.showFailureToast(
          context, "Verification Failed", "Member Not Found");
    }
    //selectedValidateMemberData
  }

  Future<void> fetchDetails() async {
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
