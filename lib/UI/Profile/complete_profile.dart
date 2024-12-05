import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:uppl/UI/Profile/Widgets/family_details.dart';
import 'package:uppl/UI/Profile/Widgets/personal_details.dart';

import '../../Constants/configuration.dart';
import 'Widgets/contact_details.dart';
import 'Widgets/social_screen.dart';

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
      // drawer: const CustomNavDrawer(),
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
                const FamilyDetailsScreen(),
                const ContactDetails(),
                const SocialScreen(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Configuration.bottomNavigationBar(context),
    );
  }
}
