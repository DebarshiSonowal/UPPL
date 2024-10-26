import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:sizer/sizer.dart';

import '../../Constants/configuration.dart';
import '../CommonWidgets/custom_nav_drawer.dart';

@RoutePage()
class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen>
    with SingleTickerProviderStateMixin {
  TabController? controller;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      setState(() {
        controller = TabController(length: 4, vsync: this);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Configuration.homeBgColor,
      appBar: Configuration.appBar,
      drawer: const CustomNavDrawer(),
      body: Column(
        children: [
          SizedBox(
            height: 7.h,
            // Increased the height to make the tabs appear wider in terms of area.
            width: double.infinity,
            child: Builder(builder: (context) {
              return TabBar(
                controller: controller,
                indicatorColor: Configuration.thirdColor,
                indicatorSize: TabBarIndicatorSize.label,
                // Makes the tab indicator span the entire tab width
                tabs: [
                  Tab(
                    child: Container(
                      width: 35.w, // Increased width to make the tab wider
                      decoration: BoxDecoration(
                        color: Configuration.thirdColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 3.w,
                        vertical: 0.5.h,
                      ),
                      child: Text(
                        "Personal Details",
                        style: Configuration.primaryFont(
                          color: Colors.white,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      width: 35.w, // Increased width to make the tab wider
                      decoration: BoxDecoration(
                        color: Configuration.thirdColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 3.w,
                        vertical: 0.5.h,
                      ),
                      child: Text(
                        "Family Details",
                        style: Configuration.primaryFont(
                          color: Colors.white,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      width: 35.w, // Increased width to make the tab wider
                      decoration: BoxDecoration(
                        color: Configuration.thirdColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 3.w,
                        vertical: 0.5.h,
                      ),
                      child: Text(
                        "Contact Details",
                        style: Configuration.primaryFont(
                          color: Colors.white,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      width: 35.w, // Increased width to make the tab wider
                      decoration: BoxDecoration(
                        color: Configuration.thirdColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 3.w,
                        vertical: 0.5.h,
                      ),
                      child: Text(
                        "Social Details",
                        style: Configuration.primaryFont(
                          color: Colors.white,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),
          Expanded(
            child: TabBarView(
              controller: controller,
              children: [
               PersonalDetailsScreen(),
                FamilyDetailsScreen(),
                Container(),
                Container(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Configuration.bottomNavigationBar(context),
    );
  }

 
}

class FamilyDetailsScreen extends StatefulWidget {
  const FamilyDetailsScreen({super.key});

  @override
  _FamilyDetailsScreenState createState() => _FamilyDetailsScreenState();
}

class _FamilyDetailsScreenState extends State<FamilyDetailsScreen> {
  int selectedGender = 1; // Example state for demonstration
  final List<String> genderOptions = ["Female", "Male", "Others"];

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
                  labelText: 'Add Family Member Name',
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
                                  borderRadius:
                                  BorderRadius.circular(25),
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
                                    style:
                                    Configuration.primaryFont(
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
                  labelText: 'Relationship',
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
                      width: 35.w,
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
                  labelText: 'Voter Id',
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
            SizedBox(height: 2.h,),
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
                activeTrackColor: Configuration.thirdColor,
                inactiveTrackColor: Colors.white,
                onSwipe: () {
                  // context.router.pushNamed(CustomRoutes.savedDetailsScreen);
                },
                child: Text(
                  "Save",
                  style:  Configuration.primaryFont(
                    fontSize: 16.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    // Add other text styling as needed
                  ),
                ),
              ),
            ),
            SizedBox(height: 1.h,),
            const Divider(),
            SizedBox(height: 1.h,),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Text(
                      "1",
                      style: Configuration.primaryFont(
                        fontSize: 15.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        // Add other text styling as needed
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40.w,
                    child: Text(
                      "Mrs Rimjim Boro",
                      style: Configuration.primaryFont(
                        fontSize: 15.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        // Add other text styling as needed
                      ),
                    ),
                  ),
                  Text(
                    "69 Years",
                    style: Configuration.primaryFont(
                      fontSize: 15.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
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
                horizontal: 10.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Text(
                      "2",
                      style: Configuration.primaryFont(
                        fontSize: 15.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        // Add other text styling as needed
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40.w,
                    child: Text(
                      "Mrs Rimjim Boro",
                      style: Configuration.primaryFont(
                        fontSize: 15.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        // Add other text styling as needed
                      ),
                    ),
                  ),
                  Text(
                    "69 Years",
                    style: Configuration.primaryFont(
                      fontSize: 15.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
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
                horizontal: 10.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Text(
                      "3",
                      style: Configuration.primaryFont(
                        fontSize: 15.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        // Add other text styling as needed
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40.w,
                    child: Text(
                      "Mr Ranjan Boro",
                      style: Configuration.primaryFont(
                        fontSize: 15.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        // Add other text styling as needed
                      ),
                    ),
                  ),
                  Text(
                    "69 Years",
                    style: Configuration.primaryFont(
                      fontSize: 15.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      // Add other text styling as needed
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            SizedBox(
              width: 85.w,
              child: Configuration.rectangleButton(
                onPressed: () {
                },
                text: 'Add Family',
                bgColor: Configuration.thirdColor,
                fontSize: 17.sp,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
          ],
        ),
      ),
    );
  }
}



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
  final List<String> genderOptions = ["Female", "Male", "Others"];
  int selectedGender = 1;
  bool agree = false;
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
            Container(
              decoration: BoxDecoration(
                color: Configuration.primaryColor,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              height: 22.w,
              width: 22.w,
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              "Upload",
              style: Configuration.primaryFont(
                fontSize: 14.sp,
                color: Colors.black87,
                // fontWeight: FontWeight.bold,
                // Add other text styling as needed
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
                    "Religion",
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
                cursorColor: Colors.black,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Enter Your Religion',
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
                    "Cast/Category",
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
                cursorColor: Colors.black,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Enter Your Cast/Category',
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
                  labelText: 'Enter Your Profession',
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
                    "Education*",
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
                cursorColor: Colors.black,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Enter Your Education*',
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
                cursorColor: Colors.black,
                keyboardType: TextInputType.phone,
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
                    "Aadhar*",
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
                cursorColor: Colors.black,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Enter Your Aadhar*',
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
                  // context.router.pushNamed(CustomRoutes.savedDetailsScreen);
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
            SizedBox(
              height: 2.h,
            ),
          ],
        ),
      ),
    );
  }
}
