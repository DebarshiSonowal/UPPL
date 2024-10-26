import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../Constants/assets.dart';
import '../../Constants/configuration.dart';
import '../../Constants/routes.dart';

@RoutePage()
class LoginOtpScreen extends StatefulWidget {
  const LoginOtpScreen({super.key});

  @override
  State<LoginOtpScreen> createState() => _LoginOtpScreenState();
}

class _LoginOtpScreenState extends State<LoginOtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: Configuration.bgGradient,
        ),
        child: Column(
          children: [

            Configuration.downwardAronai,
            SizedBox(
              height: 6.h,
            ),
            Image.asset(
              CustomAssets.logo, // Ensure this path is correct
              width: 50.w,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 5.h,
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
            SizedBox(
              width: 85.w,
              child: Configuration.rectangleButton(
                onPressed: () {
                  context.router.pushNamed(CustomRoutes.homeScreen);
                },
                text: 'Get OTP',
                bgColor: Configuration.thirdColor,
                fontSize: 16.sp,
                fontColor: Colors.white,
              ),
            ),
            const Spacer(),
            Configuration.copyright,
            SizedBox(
              height: 1.h,
            ),
            Configuration.upwardAronai,
          ],
        ),
      ),
    );
  }
}
