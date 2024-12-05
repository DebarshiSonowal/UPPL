import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:uppl/API/api_services.dart';
import 'package:uppl/Constants/configuration.dart';
import 'package:uppl/Helper/toast.dart';
import 'package:uppl/Navigation/Router/app_router.dart';

import '../../Constants/assets.dart';

@RoutePage()
class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool agreed = false;
  final mobile = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Configuration.primaryColor,
      body: Container(
        decoration: const BoxDecoration(
          gradient: Configuration.bgGradient,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Configuration.downwardAronai,
            SizedBox(
              height: 2.h,
            ),
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
                            'Welcome to UPPL Family!',
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
                              controller: mobile,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 4.w,
                                  child: Checkbox(
                                      fillColor: WidgetStateProperty.all(
                                        Colors.white,
                                      ),
                                      value: agreed,
                                      activeColor: Colors.white,
                                      checkColor: Configuration.thirdColor,
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
                                if (mobile.text.isEmpty ||
                                    mobile.text.length != 10) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                          'Please enter a valid 10-digit mobile number'),
                                    ),
                                  );
                                } else if (!agreed) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                          'Please agree to the terms and conditions'),
                                    ),
                                  );
                                } else {
                                  sendOtp(mobile.text);
                                }
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
            Configuration.copyright,
            SizedBox(height: 1.h),
            Configuration.upwardAronai,
          ],
        ),
      ),
    );
  }

  void sendOtp(String mobile) async {
    final response =
        await ApiService.instance.sendRegistrationOTP(mobile, context);
    if (response.status == 1) {
      CustomToast.showSuccessToast(context, "Otp Sent", response.message);
      AutoRouter.of(context).push(SignupOtpRoute(phonenumber: mobile));
    } else {
      CustomToast.showWarningToast(
          context, "Otp Sent Failed", response.message);
    }
  }
}
