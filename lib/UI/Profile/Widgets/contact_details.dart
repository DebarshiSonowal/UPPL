import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:uppl/Repository/repository.dart';

import '../../../API/api_services.dart';
import '../../../Constants/configuration.dart';
import '../../../Models/JSON/generate_json_model.dart';

class ContactDetails extends StatefulWidget {
  const ContactDetails({super.key});

  @override
  State<ContactDetails> createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  String? otherVillage;
  int? selectedDistrict,
      selectedPartyDistrict,
      selectedBtcConstituency,
      selectedConstituency,
      selectedPrimary,
      selectedBooth,
      selectedAssembly;
  int? selectedVillage;
  final address = TextEditingController();
  final pincode = TextEditingController();
  bool isAllDataAvailable = false;
  int indexBtcAssemblyConstituency = 0;
  int idBtcAssemblyConstituency = 0;
  List<AssemblyConstituency> filteredAssemblyConstituencies = [];
  List<Constituency> listOfConstituencies = [];
  List<Primary> filteredPrimary = [];
  List<Booth> filteredBooth = [];
  List<District> filteredDistricts = [];
  List<PartyDistrict> filteredPartyDistricts = [];
  Constituency? currentConstituency;
  Map<String, String> errorMessages = {};

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Future.delayed(Duration.zero, () {
      final data = Provider.of<Repository>(context, listen: false);
      address.text = data.profileData?.address ?? "";
      pincode.text = data.profileData?.pinCode ?? "";

      try {
        selectedDistrict = data.districts
            .firstWhere((e) =>
                e.name.toLowerCase() ==
                data.profileData!.district.toLowerCase())
            .id;
      } catch (e) {
        print(e);
      }
      try {
        selectedPartyDistrict = data.partyDistricts
            .firstWhere((e) => e.id == data.profileData!.partyDistrict)
            .id;
      } catch (e) {
        print(e);
      }
      try {
        selectedBtcConstituency = data.btcConstituency
            .firstWhere((e) => e.id == data.profileData!.btcConstituency)
            .id;
      } catch (e) {
        print(e);
      }
      try {
        selectedConstituency = data.assemblyConstituencies
            .firstWhere((e) => e.id == data.profileData!.assemblyConstituency)
            .id;
      } catch (e) {
        print(e);
      }
      try {
        selectedPrimary = data.profileData!.primaryId;
      } catch (e) {
        print(e);
      }
      try {
        selectedBooth = data.profileData!.boothId;
      } catch (e) {
        print(e);
      }
      try {
        selectedVillage = data.profileData!.villageId;
      } catch (e) {
        print(e);
      }

      if (selectedDistrict != null &&
          selectedPartyDistrict != null &&
          selectedBtcConstituency != null &&
          selectedConstituency != null &&
          selectedPrimary != null &&
          selectedBooth != null &&
          selectedVillage != null &&
          address.text.isNotEmpty &&
          pincode.text.isNotEmpty) {
        setState(() {
          debugPrint("all the selected");
          isAllDataAvailable = true;
        });
      } else {
        setState(() {});
      }
    });
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () async {
      final data = Provider.of<Repository>(context, listen: false);

      // Initialize text controllers
      address.text = data.profileData?.address ?? "";
      pincode.text = data.profileData?.pinCode ?? "";

      // Initialize selections safely using try-catch
      try {
        selectedBtcConstituency = data.profileData?.btcConstituency;
        if (selectedBtcConstituency != null) {
          listOfConstituencies = data.btcAssemblyConstituencies[
              data.btcConstituency.indexWhere((constituency) =>
                  constituency.id == selectedBtcConstituency)];

          filteredAssemblyConstituencies = data.assemblyConstituencies
              .where((e) => listOfConstituencies
                  .any((f) => f.assemblyConstituencyId == e.id))
              .toList();

          selectedAssembly = data.profileData?.assemblyConstituency;
          if (selectedAssembly != null) {
            currentConstituency = listOfConstituencies.firstWhere(
                (e) => e.assemblyConstituencyId == selectedAssembly);

            selectedDistrict = currentConstituency?.districtId;
            selectedPartyDistrict = currentConstituency?.partyDistrictId;

            filteredDistricts = data.districts
                .where((e) =>
                    listOfConstituencies.any((f) => f.districtId == e.id))
                .toList();

            filteredPartyDistricts = data.partyDistricts
                .where((e) =>
                    listOfConstituencies.any((f) => f.partyDistrictId == e.id))
                .toList();

            selectedPrimary = data.profileData?.primaryId;
            if (selectedPrimary != null) {
              filteredPrimary =
                  data.btcPrimariesList["${currentConstituency?.id}"]!.toList();
              debugPrint(
                  "data.profileData?.boothId ${data.profileData?.boothId}");
              selectedBooth = data.profileData?.boothId;
              if (selectedBooth != null) {
                filteredBooth = data.booths
                    .where((e) => e.btcPrimaryId == selectedPrimary)
                    .toList();

                selectedVillage = data.profileData?.villageId;
                if (selectedVillage == 0) {
                  otherVillage = data.profileData?.village;
                }
              }
            }
          }
        }
      } catch (e) {
        print(e);
      }
      setState(() {});
      // Check if all required data is available
      bool hasAllData = [
            selectedDistrict,
            selectedPartyDistrict,
            selectedBtcConstituency,
            selectedConstituency,
            selectedPrimary,
            selectedBooth,
            selectedVillage
          ].every((item) => item != null) &&
          [address.text, pincode.text].every((text) => text.isNotEmpty);

      if (mounted) {
        setState(() {
          isAllDataAvailable = hasAllData;
          if (hasAllData) debugPrint("All data selected successfully");
        });
      }
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
              "Contact details",
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
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 4.w,
              ),
              child: Row(
                children: [
                  Text(
                    "Address",
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
              height: 1.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 4.w,
              ),
              child: TextFormField(
                readOnly: isAllDataAvailable,
                controller: address,
                onTap: () async {},
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Enter Your Address',
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
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 4.w,
                  ),
                ),
                style: Configuration.primaryFont(
                  fontSize: 14.sp,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 0.5.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 4.w,
              ),
              child: SizedBox(
                height: 7.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 40.w,
                      child: TextFormField(
                        readOnly: isAllDataAvailable,
                        controller: pincode,
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          errorText: errorMessages['pin_code'],
                          labelText: 'PIN Code',
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
                    Consumer<Repository>(
                        builder: (context, Repository data, _) {
                      return SizedBox(
                        width: 50.w,
                        child: DropdownSearch<String>(
                          items: (String filter, _) async {
                            return data.btcConstituency
                                .map((BTCConstituency value) => value.name)
                                .where((name) => name
                                    .toLowerCase()
                                    .contains(filter.toLowerCase()))
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
                                  .firstWhere((constituency) =>
                                      constituency.name == value)
                                  .id;
                              listOfConstituencies =
                                  data.btcAssemblyConstituencies[data
                                      .btcConstituency
                                      .indexWhere((constituency) =>
                                          constituency.name == value)];
                              filteredAssemblyConstituencies = data
                                  .assemblyConstituencies
                                  .where((e) => listOfConstituencies.any(
                                      (f) => f.assemblyConstituencyId == e.id))
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
                                          constituency.id ==
                                          selectedBtcConstituency,
                                      orElse: () => const BTCConstituency(
                                          id: 0, name: '', status: 0))
                                  .name
                              : '',
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 0.5.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 4.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Consumer<Repository>(builder: (context, data, _) {
                      return DropdownSearch<String>(
                        items: (String filter, _) async {
                          return (filteredAssemblyConstituencies
                                  .map((assembly) => assembly.name))
                              .where((name) => name
                                  .toLowerCase()
                                  .contains(filter.toLowerCase()))
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
                              orElse: () =>
                                  throw Exception("Assembly not found"),
                            );
                            currentConstituency =
                                listOfConstituencies.firstWhere((e) =>
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
                                    (assembly) =>
                                        assembly.id == selectedAssembly,
                                    orElse: () => const AssemblyConstituency(
                                        id: 0, name: ''))
                                .name
                            : "",
                      );
                    }),
                  ),
                  SizedBox(
                    width: 2.w,
                  ), // Add spacing
                  Consumer<Repository>(builder: (context, Repository data, _) {
                    return SizedBox(
                      width: 50.w,
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
                    );
                  }), // between Expanded widgets
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
              child: SizedBox(
                height: 7.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Consumer<Repository>(
                        builder: (context, Repository data, _) {
                      return SizedBox(
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
                          items:
                              filteredPartyDistricts.map((PartyDistrict value) {
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
                      );
                    }),
                    Consumer<Repository>(
                      builder: (context, Repository data, _) {
                        return SizedBox(
                          width: 50.w,
                          child: DropdownSearch<String>(
                            items: (String filter, _) async {
                              return filteredPrimary
                                  .map((Primary value) => value.name)
                                  .where((name) => name
                                      .toLowerCase()
                                      .contains(filter.toLowerCase()))
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
                                    .firstWhere(
                                        (primary) => primary.name == value)
                                    .id;
                                filteredBooth = data.booths
                                    .where((e) =>
                                        e.btcPrimaryId == selectedPrimary)
                                    .toList();
                              });
                            },
                            selectedItem: selectedPrimary != null
                                ? filteredPrimary
                                    .firstWhere(
                                        (primary) =>
                                            primary.id == selectedPrimary,
                                        orElse: () => Primary(
                                            id: 0,
                                            name: '',
                                            btcAssemblyConstituencyId: 0))
                                    .name
                                : "",
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 0.5.h,
            ),
            Consumer<Repository>(builder: (context, Repository data, _) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 4.w,
                  vertical: 1.h,
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
                                  const Booth(id: 0, name: '', btcPrimaryId: 0))
                          .name
                      : "",
                ),
              );
            }),
            SizedBox(
              height: 0.5.h,
            ),
            Consumer<Repository>(builder: (context, Repository data, _) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 4.w,
                ),
                child: DropdownSearch<String>(
                  items: (String filter, _) async {
                    var villageNames = data.villages
                        .map((village) => village.name)
                        .where((name) =>
                            name.toLowerCase().contains(filter.toLowerCase()))
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
                        selectedVillage = 0; // Some identifier for "Other"
                      } else {
                        selectedVillage = data.villages
                            .firstWhere((village) => village.name == value)
                            .id;
                      }
                    });
                  },
                  selectedItem: selectedVillage == 0
                      ? "Other"
                      : selectedVillage != null
                          ? data.villages
                              .firstWhere(
                                (village) => village.id == selectedVillage,
                                orElse: () =>
                                    const Village(id: 0, name: '', vcdc: ""),
                              )
                              .name
                          : "",
                ),
              );
            }),
            SizedBox(
              height: 1.5.h,
            ),
            Visibility(
              visible: selectedVillage == 0,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 4.w,
                ),
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
                    setState(() {
                      otherVillage = text;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 1.5.h,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 5.w,
              ),
              child: Configuration.rectangleButton(
                onPressed: () {
                  updateContactDetails(context);
                  debugPrint("${selectedVillage}");
                },
                text: "Save",
                fontSize: 15.sp,
                fontColor: Colors.black,
                bgColor: Configuration.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void updateContactDetails(BuildContext context) async {
    Future<void> attemptUpdate() async {
      final response = await ApiService.instance(context).updateContactDetails(
          context,
          Provider.of<Repository>(context, listen: false)
              .memberData
              ?.personalDetails
              .memberId,
          "",
          address.text,
          pincode.text,
          selectedBtcConstituency,
          selectedAssembly,
          selectedDistrict,
          selectedPartyDistrict,
          selectedPrimary,
          selectedBooth,
          selectedVillage == 0
              ? "other"
              : Provider.of<Repository>(context, listen: false)
                  .villages
                  .firstWhere((e) => e.id == selectedVillage)
                  .id,
          otherVillage ?? "");

      if (response.status == 1 ?? false) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
                response.message ?? 'Contact details updated successfully'),
            backgroundColor: Colors.green,
            duration: const Duration(seconds: 2),
          ),
        );
      } else {
        errorMessages = Map.fromEntries((response.data?.errors?.entries ?? [])
            .map((entry) => MapEntry(entry.key, entry.value.join('\n'))));
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: response.data?.errors?.isEmpty ?? true
                ? Text(response.message ?? 'An error occurred')
                : Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Please check the following:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 8),
                      ...response.data?.errors?.entries
                              .map((error) => Padding(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Row(
                                      children: [
                                        Icon(Icons.error_outline,
                                            size: 16, color: Colors.white70),
                                        SizedBox(width: 8),
                                        Expanded(
                                          child: Text(
                                            '${error.value.first}',
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ))
                              .toList() ??
                          [Text('An error occurred')]
                    ],
                  ),
            backgroundColor: response.data?.errors?.isEmpty ?? true
                ? Colors.green
                : Colors.red.shade700,
            behavior: SnackBarBehavior.floating,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            duration: const Duration(seconds: 5),
            margin: EdgeInsets.all(8),
          ),
        );
      }
    }

    try {
      await attemptUpdate();
    } catch (e) {
      // Retry once on failure
      try {
        await attemptUpdate();
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content:
                Text('Failed to update contact details. Please try again.'),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 3),
          ),
        );
      }
    }
  }
}
