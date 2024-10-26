import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../Constants/assets.dart';
import '../../Constants/configuration.dart';
import '../../Constants/routes.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isOtp = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: Configuration.bgGradient,
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Configuration.downwardAronai,
            SizedBox(
              height: 3.h,
            ),
            Image.asset(
              CustomAssets.logo, // Ensure this path is correct
              width: 40.w,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 3.h,
            ),
            Text(
              'Please provide your Mobile Number for Login',
              style: Configuration.primaryFont(
                fontSize: 13.sp,
                fontWeight: FontWeight.bold,
                color: Configuration.thirdColor,
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8.w,
              ),
              child: TextField(
                cursorColor: Colors.black,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Phone Number",
                  helperStyle: Configuration.primaryFont(
                    fontSize: 14.sp,
                    color: Colors.black87,
                    // Add other text styling as needed
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.black54,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
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
                ),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8.w,
              ),
              child: TextField(
                cursorColor: Colors.black,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Password",
                  helperStyle: Configuration.primaryFont(
                    fontSize: 14.sp,
                    color: Colors.black87,
                    // Add other text styling as needed
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.black54,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
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
                ),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8.w,
              ),
              child: Container(
                height: 6.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 4.w,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffFFFCDC),
                    border: Border.all(
                      color: Colors.black54,
                    )),
                child: Row(
                  children: [
                    SizedBox(
                      width: 4.w,
                      child: Checkbox(
                          fillColor: WidgetStateProperty.all(
                            Colors.white,
                          ),
                          value: isOtp,
                          activeColor: Colors.white,
                          checkColor: Configuration.thirdColor,
                          onChanged: (val) {
                            setState(() {
                              isOtp = val ?? false;
                            });
                          }),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Text(
                      'Login with OTP',
                      style: Configuration.primaryFont(
                        fontSize: 16.sp,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            SizedBox(
              width: 85.w,
              child: Configuration.rectangleButton(
                onPressed: () {
                  context.router.pushNamed(CustomRoutes.loginOtpScreen);
                },
                text: 'Log in Here',
                bgColor: Configuration.thirdColor,
                fontSize: 17.sp,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: (){
                    context.router.pushNamed(CustomRoutes.forgotPasswordScreen);
                  },
                  child: Text(
                    'Forgot Password',
                    style: Configuration.primaryFont(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
              ],
            ),
            const Spacer(),
            Container(
              decoration: const BoxDecoration(
                color: Configuration.secondaryColor,
              ),
              padding: EdgeInsets.only(
                top: 2.h,
              ),
              width: double.infinity,
              height: 25.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Not a UPPL member?',
                    style: Configuration.primaryFont(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 80.w,
                    child: Configuration.rectangleButton(
                      onPressed: () {

                      },
                      text: 'Join Now',
                      bgColor: Configuration.primaryColor,
                      fontSize: 17.sp,
                      fontColor: Colors.black,
                    ),
                  ),
                  Configuration.copyrightColored,
                  Configuration.upwardAronaiColor,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
