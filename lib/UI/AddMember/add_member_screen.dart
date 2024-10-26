import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../Constants/assets.dart';
import '../../Constants/configuration.dart';
import '../../Constants/routes.dart';


@RoutePage()
class AddMemberScreen extends StatefulWidget {
  const AddMemberScreen({super.key});

  @override
  State<AddMemberScreen> createState() => _AddMemberScreenState();
}

class _AddMemberScreenState extends State<AddMemberScreen> {
  bool agreed = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Configuration.homeBgColor,
      appBar: Configuration.appBar,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
         gradient: Configuration.addMemberGradient,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none, // Allow overflow for Positioned widget
              alignment: Alignment.topCenter,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5.w,
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    elevation: 1,
                    child: Container(
                      height: 53.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 2.w,
                        vertical: 8.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 3.h,
                          ),
                          Text(
                            'Add a new member',
                            style: Configuration.primaryFont(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // Add size box to adjust space for text or other widgets
                          SizedBox(
                            height: 3.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 4.w,
                            ),
                            child: TextField(
                              cursorColor: Colors.black,
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color(0xffFFFDE4),
                                prefix: Text(
                                  "+91 | ",
                                  style: Configuration.primaryFont(
                                    fontSize: 14.sp,
                                    color: Colors.black,
                                    // Add other text styling as needed
                                  ),
                                ),
                                hintText: 'Enter Mobile Number',
                                helperStyle: Configuration.primaryFont(
                                  fontSize: 14.sp,
                                  color: Colors.black87,
                                  // Add other text styling as needed
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
                              horizontal: 2.w,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 4.w,
                                  child: Checkbox(
                                      fillColor: WidgetStateProperty.all(
                                        Configuration.thirdColor,
                                      ),
                                      value: agreed,
                                      checkColor: Colors.white,
                                      onChanged: (val) {
                                        setState(() {
                                          agreed = val ?? false;
                                        });
                                      }),
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                SizedBox(
                                  width: 70.w,
                                  child: RichText(
                                    text: TextSpan(
                                      text:
                                      "I certify that the information provided above is accurate. I also acknowledge that all further communication will happen based on the details I have provided above.",
                                      style: Configuration.primaryFont(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          SizedBox(
                            width: 60.w,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffE4E4E4),
                              ),
                              onPressed: () {
                                AutoRouter.of(context).pushNamed(
                                    CustomRoutes.addMemberDetailsScreen);
                              },
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 2.w,
                                  ),
                                  Text(
                                    "Get Verification Code",
                                    style: Configuration.primaryFont(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: -6.h,
                  // Position logo such that half of it is above the container
                  child: Image.asset(
                    CustomAssets.logo,
                    width: 30.w,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Configuration.bottomNavigationBar(context),
    );
  }
}
