import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:uppl/Repository/repository.dart';

import '../../../Constants/configuration.dart';
import '../../../Models/JSON/generate_json_model.dart';

class ContactDetails extends StatefulWidget {
  const ContactDetails({super.key});

  @override
  State<ContactDetails> createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  String? selectedDistrict,
      selectedPartyDistrict,
      selectedBtcConstituency,
      selectConstituency,
      selectPrimary,
      selectBooth,
      selectVillage;
  final address = TextEditingController();
  final pincode = TextEditingController();
  bool isAllDataAvailable = false;

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
            .name;
      } catch (e) {
        print(e);
      }
      try {
        selectedPartyDistrict = data.partyDistricts
            .firstWhere((e) => e.id == data.profileData!.partyDistrict)
            .name;
      } catch (e) {
        print(e);
      }
      try {
        selectedBtcConstituency = data.btcConstituency
            .firstWhere((e) => e.id == data.profileData!.btcConstituency)
            .name;
      } catch (e) {
        print(e);
      }
      try {
        selectConstituency = data.assemblyConstituencies
            .firstWhere((e) => e.id == data.profileData!.assemblyConstituency)
            .name;
      } catch (e) {
        print(e);
      }
      try {
        selectPrimary = data.profileData!.primaryId.toString();
      } catch (e) {
        print(e);
      }
      try {
        selectBooth = data.profileData!.boothId.toString();
      } catch (e) {
        print(e);
      }
      try {
        selectVillage = data.profileData!.villageId.toString();
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
            .name;
      } catch (e) {
        print(e);
      }
      try {
        selectedPartyDistrict = data.partyDistricts
            .firstWhere((e) => e.id == data.profileData!.partyDistrict)
            .name;
      } catch (e) {
        print(e);
      }
      try {
        selectedBtcConstituency = data.btcConstituency
            .firstWhere((e) => e.id == data.profileData!.btcConstituency)
            .name;
      } catch (e) {
        print(e);
      }
      try {
        selectConstituency = data.assemblyConstituencies
            .firstWhere((e) => e.id == data.profileData!.assemblyConstituency)
            .name;
      } catch (e) {
        print(e);
      }
      try {
        selectPrimary = data.profileData!.primaryId.toString();
      } catch (e) {
        print(e);
      }
      try {
        selectBooth = data.profileData!.boothId.toString();
      } catch (e) {
        print(e);
      }
      try {
        selectVillage = data.profileData!.villageId.toString();
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
                            disabledItemFn: (String s) => s.startsWith('I'),
                          ),
                          decoratorProps: DropDownDecoratorProps(
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
                          onChanged: isAllDataAvailable
                              ? null
                              : (value) {
                                  setState(() {
                                    selectedDistrict = value;
                                  });
                                },
                          selectedItem: selectedDistrict,
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
                            disabledItemFn: (String s) => s.startsWith('I'),
                          ),
                          decoratorProps: DropDownDecoratorProps(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              labelText: 'Party District*',
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
                                    selectedPartyDistrict = value;
                                  });
                                },
                          selectedItem: selectedPartyDistrict,
                        ),
                      );
                    }),
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
                            disabledItemFn: (String s) => s.startsWith('I'),
                          ),
                          decoratorProps: DropDownDecoratorProps(
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
                          onChanged: isAllDataAvailable
                              ? null
                              : (value) {
                                  setState(() {
                                    selectedBtcConstituency = value;
                                  });
                                },
                          selectedItem: selectedBtcConstituency,
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
                    child: Consumer<Repository>(
                        builder: (context, Repository data, _) {
                      return DropdownSearch<String>(
                        items: (String filter, _) async {
                          return filter.isEmpty
                              ? data.assemblyConstituencies
                                  .map((constituency) => constituency.name)
                                  .toList()
                              : data.assemblyConstituencies
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
                              hintText: 'Search assembly constituency...',
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
                                  selectConstituency = value;
                                });
                              },
                        selectedItem: selectConstituency,
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
                            disabledItemFn: (String s) => s.startsWith('I'),
                          ),
                          decoratorProps: DropDownDecoratorProps(
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
                          onChanged: isAllDataAvailable
                              ? null
                              : (value) {
                                  setState(() {
                                    selectPrimary = data.btcPrimaries
                                        .expand((primaryList) => primaryList)
                                        .firstWhere(
                                            (primary) => primary.name == value)
                                        .id
                                        .toString();
                                  });
                                },
                          selectedItem: data.btcPrimaries
                              .expand((primaryList) => primaryList)
                              .firstWhere(
                                  (primary) =>
                                      primary.id.toString() == selectPrimary,
                                  orElse: () => const Primary(
                                      id: 0,
                                      name: '',
                                      btcAssemblyConstituencyId: 0))
                              .name,
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
            // Padding(
            //   padding: EdgeInsets.symmetric(
            //     horizontal: 4.w,
            //   ),
            //   child: SizedBox(
            //     height: 7.h,
            //     width: double.infinity,
            //     child: Consumer<Repository>(builder: (context, data, _) {
            //       return DropdownButtonFormField<String>(
            //         decoration: InputDecoration(
            //           filled: true,
            //           fillColor: Colors.white,
            //           labelText: 'Lok Sabha Constituency',
            //           labelStyle: Configuration.primaryFont(
            //             fontSize: 14.sp,
            //             color: Colors.black54,
            //           ),
            //           border: OutlineInputBorder(
            //             borderRadius: BorderRadius.circular(10),
            //           ),
            //           focusedBorder: OutlineInputBorder(
            //             borderRadius: BorderRadius.circular(10),
            //           ),
            //         ),
            //         value: null,
            //         onChanged: (String? newValue) {
            //           // Handle the change
            //         },
            //         items: data.btcAssemblyConstituencies
            //             .expand((List<Constituency> constituencyList) =>
            //                 constituencyList)
            //             .toSet()
            //             .toList()
            //             .map<DropdownMenuItem<String>>(
            //                 (Constituency constituency) {
            //           return DropdownMenuItem<String>(
            //             value: constituency.id.toString(),
            //             child: Text(
            //               "${constituency.id}",
            //               style: Configuration.primaryFont(
            //                 fontSize: 14.sp,
            //                 color: Colors.black,
            //               ),
            //             ),
            //           );
            //         }).toList(),
            //       );
            //     }),
            //   ),
            // ),
            // SizedBox(
            //   height: 0.5.h,
            // ),
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
                                .id
                                .toString();
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
                    return data.villages
                        .map((village) => village.name)
                        .where((name) =>
                            name.toLowerCase().contains(filter.toLowerCase()))
                        .toList();
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
                            selectVillage = data.villages
                                .firstWhere((village) => village.name == value)
                                .id
                                .toString();
                          });
                        },
                  selectedItem: data.villages
                      .firstWhere(
                          (village) => village.id.toString() == selectVillage,
                          orElse: () => Village(id: 0, name: '', vcdc: ""))
                      .name,
                ),
              );
            }),
            SizedBox(
              height: 1.5.h,
            ),
            isAllDataAvailable
                ? Container()
                : Padding(
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
                        // context.router.pushNamed(CustomRoutes.savedDetailsScreen);
                        updateContactDetails(context);
                      },
                      child: Text(
                        "Save",
                        style: Configuration.primaryFont(
                          fontSize: 16.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          // Add other text styling as needed
                        ),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  void updateContactDetails(BuildContext context) {}
}
