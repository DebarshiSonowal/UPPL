import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:uppl/API/api_services.dart';
import 'package:uppl/Navigation/Router/app_router.dart';

import '../../Constants/assets.dart';
import '../../Constants/configuration.dart';
import '../../Models/Auth/login_model.dart';

@RoutePage()
class LoginOtpScreen extends StatefulWidget {
  const LoginOtpScreen({super.key});

  @override
  State<LoginOtpScreen> createState() => _LoginOtpScreenState();
}

class _LoginOtpScreenState extends State<LoginOtpScreen> {
  final mobileController = TextEditingController();

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
          children: <Widget>[
            Configuration.downwardAronai,
            SizedBox(
              height: 20.h,
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
                      height: 43.h,
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
                              controller: mobileController,
                              cursorColor: Colors.black,
                              keyboardType: TextInputType.phone,
                              maxLength: 10,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color(0xffFFFDE4),
                                prefixIcon: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "+91 | ",
                                      style: Configuration.primaryFont(
                                        fontSize: 14.sp,
                                        color: Colors.black,
                                        // Add other text styling as needed
                                      ),
                                    ),
                                  ],
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
                          SizedBox(
                            width: 60.w,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffE4E4E4),
                              ),
                              onPressed: () {
                                sendOTP(mobileController.text);
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
            const Spacer(),
            Configuration.copyright,
            SizedBox(height: 1.h),
            Configuration.upwardAronai,
          ],
        ),
      ),
    );
  }

  void sendOTP(mobile_number) async {
    final LoginModel response =
        await ApiService.instance(context).sendOTP(mobile_number, context);
    if (response.status == 1) {
      context.router.push(LoginOtpVerifyRoute(phonenumber: mobile_number));
    } else {
      // CustomToast.showFailureToast(context, "Error", response.message);
      final errorMessages = response.data.errors?.values
              ?.map((e) => e.toString().replaceAll(RegExp(r'[\[\]]'), ''))
              .join('\n') ??
          '';
      if (errorMessages.isNotEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Row(
              children: [
                Icon(Icons.error, color: Colors.white),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    errorMessages,
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
  }
}
