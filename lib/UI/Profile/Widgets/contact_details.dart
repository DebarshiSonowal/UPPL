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
      selectedBtcAssemblyConstituency,
      selectConstituency,
      selectPrimary,
      selectBooth;
  int? selectVillage;
  final address = TextEditingController();
  final pincode = TextEditingController();
  bool isAllDataAvailable = false;
  int indexBtcAssemblyConstituency = 0;
  int idBtcAssemblyConstituency = 0;
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
        selectConstituency = data.assemblyConstituencies
            .firstWhere((e) => e.id == data.profileData!.assemblyConstituency)
            .id;
      } catch (e) {
        print(e);
      }
      try {
        selectPrimary = data.profileData!.primaryId;
      } catch (e) {
        print(e);
      }
      try {
        selectBooth = data.profileData!.boothId;
      } catch (e) {
        print(e);
      }
      try {
        selectVillage = data.profileData!.villageId;
      } catch (e) {
        print(e);
      }

      if (selectedDistrict != null &&
          selectedPartyDistrict != null &&
          selectedBtcConstituency != null &&
          selectConstituency != null &&
          selectPrimary != null &&
          selectBooth != null &&
          selectVillage != null &&
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
    Future.delayed(Duration.zero, () {
      final data = Provider.of<Repository>(context, listen: false);
      address.text = data.profileData?.address ?? "";
      pincode.text = data.profileData?.pinCode ?? "";
      // pincode.text = data.membershipCardData.
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
        selectConstituency = data.assemblyConstituencies
            .firstWhere((e) => e.id == data.profileData!.assemblyConstituency)
            .id;
      } catch (e) {
        print(e);
      }
      try {
        selectPrimary = data.profileData!.primaryId;
      } catch (e) {
        print(e);
      }
      try {
        selectBooth = data.profileData!.boothId;
      } catch (e) {
        print(e);
      }
      try {
        selectVillage = data.profileData!.villageId;
      } catch (e) {
        print(e);
      }
    });
    if (selectedDistrict != null &&
        selectedPartyDistrict != null &&
        selectedBtcConstituency != null &&
        selectConstituency != null &&
        selectPrimary != null &&
        selectBooth != null &&
        selectVillage != null &&
        address.text.isNotEmpty &&
        pincode.text.isNotEmpty) {
      setState(() {
        debugPrint("all the selected");
        isAllDataAvailable = true;
      });
    } else {
      setState(() {});
    }
    setState(() {});
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
                                .map((constituency) => constituency.name)
                                .where((name) => name
                                    .toLowerCase()
                                    .contains(filter.toLowerCase()))
                                .toList();
                          },
                          popupProps: PopupProps.menu(
                            showSearchBox: true,
                            searchFieldProps: const TextFieldProps(
                              decoration: InputDecoration(
                                hintText: 'Search BTC constituency...',
                                prefixIcon: Icon(Icons.search),
                              ),
                            ),
                            showSelectedItems: true,
                            disabledItemFn: (String s) => false,
                          ),
                          decoratorProps: DropDownDecoratorProps(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              labelText: 'BTC Constituency',
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
                          onChanged: (value) {
                            setState(() {
                              selectedBtcConstituency = data.btcConstituency
                                  .firstWhere((c) => c.name == value)
                                  .id;
                              indexBtcAssemblyConstituency =
                                  data.btcConstituency.indexWhere(
                                      (e) => e.id == selectedBtcConstituency);
                            });
                            debugPrint(
                                "selectedBtcAssemblyConstituency $indexBtcAssemblyConstituency");
                          },
                          selectedItem: selectedBtcConstituency != null
                              ? data.btcConstituency
                                  .firstWhere(
                                      (c) => c.id == selectedBtcConstituency)
                                  .name
                              : null,
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
              child: SizedBox(
                height: 7.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Consumer<Repository>(
                        builder: (context, Repository data, _) {
                      return SizedBox(
                        width: 50.w,
                        child: DropdownSearch<String>(
                          items: (String filter, _) async {
                            return data.districts
                                .map((district) => district.name)
                                .where((name) => name
                                    .toLowerCase()
                                    .contains(filter.toLowerCase()))
                                .toList();
                          },
                          popupProps: PopupProps.menu(
                            showSearchBox: true,
                            searchFieldProps: const TextFieldProps(
                              decoration: InputDecoration(
                                hintText: 'Search district...',
                                prefixIcon: Icon(Icons.search),
                              ),
                            ),
                            showSelectedItems: true,
                            disabledItemFn: (String s) => false,
                          ),
                          decoratorProps: DropDownDecoratorProps(
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
                          ),
                          onChanged: isAllDataAvailable
                              ? null
                              : (value) {
                                  setState(() {
                                    selectedDistrict = data.districts
                                        .firstWhere((district) =>
                                            district.name == value)
                                        .id;
                                  });
                                },
                          selectedItem: selectedDistrict != null
                              ? data.districts
                                  .firstWhere((district) =>
                                      district.id == selectedDistrict)
                                  .name
                              : null,
                        ),
                      );
                    }),
                    Consumer<Repository>(
                        builder: (context, Repository data, _) {
                      return SizedBox(
                        width: 40.w,
                        child: DropdownSearch<String>(
                          items: (String filter, _) async {
                            return data.partyDistricts
                                .map((district) => district.name)
                                .where((name) => name
                                    .toLowerCase()
                                    .contains(filter.toLowerCase()))
                                .toList();
                          },
                          popupProps: PopupProps.menu(
                            showSearchBox: true,
                            searchFieldProps: const TextFieldProps(
                              decoration: InputDecoration(
                                hintText: 'Search party district...',
                                prefixIcon: Icon(Icons.search),
                              ),
                            ),
                            showSelectedItems: true,
                            disabledItemFn: (String s) => false,
                          ),
                          decoratorProps: DropDownDecoratorProps(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              labelText: 'Party District*',
                              errorText: errorMessages['party_district'],
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
                          onChanged: isAllDataAvailable
                              ? null
                              : (value) {
                                  setState(() {
                                    selectedPartyDistrict = data.partyDistricts
                                        .firstWhere((district) =>
                                            district.name == value)
                                        .id;
                                  });
                                },
                          selectedItem: selectedPartyDistrict != null
                              ? data.partyDistricts
                                  .firstWhere((district) =>
                                      district.id == selectedPartyDistrict)
                                  .name
                              : null,
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
                          return data.btcAssemblyConstituencies[
                                  indexBtcAssemblyConstituency]
                              .map((Constituency value) => data
                                  .assemblyConstituencies
                                  .firstWhere((e) =>
                                      e.id == value.assemblyConstituencyId)
                                  .name)
                              .where((name) => name
                                  .toLowerCase()
                                  .contains(filter.toLowerCase()))
                              .toList();
                        },
                        popupProps: PopupProps.menu(
                          showSearchBox: true,
                          searchFieldProps: const TextFieldProps(
                            decoration: InputDecoration(
                              hintText: 'Search Assembly Constituency...',
                              prefixIcon: Icon(Icons.search),
                            ),
                          ),
                          showSelectedItems: true,
                          disabledItemFn: (String s) => false,
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
                        onChanged: (name) {
                          if (name == null) return;
                          setState(() {
                            final constituency = data.assemblyConstituencies
                                .firstWhere((e) => e.name == name);
                            selectedBtcAssemblyConstituency = constituency.id;

                            selectedDistrict = data.districts
                                .firstWhere(
                                  (district) =>
                                      district.id ==
                                      data.btcAssemblyConstituencies[
                                          indexBtcAssemblyConstituency],
                                )
                                .id;
                            debugPrint("selectedDistrict ");
                          });
                        },
                        onSaved: (String? name) {
                          if (name == null) return;
                          final tempList = data.btcAssemblyConstituencies[
                                  indexBtcAssemblyConstituency]
                              .map((Constituency value) => data
                                  .assemblyConstituencies
                                  .firstWhere((e) =>
                                      e.id == value.assemblyConstituencyId)
                                  .name)
                              .toList();
                          setState(() {});
                        },
                        selectedItem: selectedBtcAssemblyConstituency != null
                            ? data.assemblyConstituencies
                                .firstWhere((e) =>
                                    e.id ==
                                    data
                                        .btcAssemblyConstituencies[
                                            indexBtcAssemblyConstituency]
                                        .first
                                        .assemblyConstituencyId)
                                .name
                            : null,
                      );
                    }),
                  ),
                  SizedBox(
                    width: 2.w,
                  ), // Add spacing between Expanded widgets
                  Expanded(
                    child: Consumer<Repository>(
                      builder: (context, Repository data, _) {
                        return DropdownSearch<String>(
                          items: (String filter, _) async {
                            var allPrimaries = data.btcPrimaries
                                .expand((primaryList) => primaryList)
                                .toList();
                            return filter.isEmpty
                                ? allPrimaries
                                    .map((primary) => primary.name)
                                    .toList()
                                : allPrimaries
                                    .map((primary) => primary.name)
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
                            disabledItemFn: (String s) => false,
                          ),
                          decoratorProps: DropDownDecoratorProps(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              labelText: 'Primary',
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
                          onChanged: isAllDataAvailable
                              ? null
                              : (value) {
                                  setState(() {
                                    selectPrimary = data.btcPrimaries
                                        .expand((primaryList) => primaryList)
                                        .firstWhere(
                                            (primary) => primary.name == value)
                                        .id;
                                  });
                                },
                          selectedItem: selectPrimary != null
                              ? data.btcPrimaries
                                  .expand((primaryList) => primaryList)
                                  .firstWhere(
                                    (primary) => primary.id == selectPrimary,
                                    orElse: () => const Primary(
                                        id: 0,
                                        name: '',
                                        btcAssemblyConstituencyId: 0),
                                  )
                                  .name
                              : null,
                        );
                      },
                    ),
                  ),
                ],
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
                    return data.booths
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
                      labelText: 'Enter Your Booth',
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
                  onChanged: isAllDataAvailable
                      ? null
                      : (value) {
                          setState(() {
                            selectBooth = data.booths
                                .firstWhere((booth) => booth.name == value)
                                .id;
                          });
                        },
                  selectedItem: data.booths
                      .firstWhere((booth) => booth.id.toString() == selectBooth,
                          orElse: () =>
                              const Booth(id: 0, name: '', btcPrimaryId: 0))
                      .name,
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
                    var filteredVillages = data.villages
                        .where((village) => village.name
                            .toLowerCase()
                            .contains(filter.toLowerCase()))
                        .map((village) => village.name)
                        .toList()
                      ..sort();

                    if (filter.isEmpty ||
                        "Other".toLowerCase().contains(filter.toLowerCase())) {
                      filteredVillages.add("Other");
                    }
                    return filteredVillages;
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
                    disabledItemFn: (String s) => false,
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
                  onChanged: isAllDataAvailable
                      ? null
                      : (value) {
                          setState(() {
                            if (value == "Other") {
                              selectVillage = 0; // Some identifier for "Other"
                            } else {
                              selectVillage = data.villages
                                  .firstWhere(
                                      (village) => village.name == value)
                                  .id;
                            }
                          });
                        },
                  selectedItem: selectVillage == 0
                      ? "Other"
                      : selectVillage != null
                          ? data.villages
                              .firstWhere(
                                (village) => village.id == selectVillage,
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
              visible: selectVillage == 0,
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
                  debugPrint("${selectVillage}");
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
          Provider.of<Repository>(context, listen: false).profileData?.userId,
          "",
          address.text,
          pincode.text,
          selectedBtcConstituency,
          selectConstituency,
          selectedDistrict,
          selectedPartyDistrict,
          selectPrimary,
          selectBooth,
          selectVillage == 0
              ? "other"
              : Provider.of<Repository>(context, listen: false)
                  .villages
                  .firstWhere((e) => e.id == selectVillage)
                  .name,
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
