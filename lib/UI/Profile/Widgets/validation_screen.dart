import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:uppl/Constants/configuration.dart';

@RoutePage()
class ValidationScreen extends StatefulWidget {
  const ValidationScreen({super.key});

  @override
  State<ValidationScreen> createState() => _ValidationScreenState();
}

class _ValidationScreenState extends State<ValidationScreen> {
  bool isValidated = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Configuration.thirdColor,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: isValidated
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.check_circle_rounded,
                    color: Configuration.primaryColor,
                    size: 50.sp,
                  ),
                  Text(
                    "Verified",
                    style: Configuration.primaryFont(
                      fontSize: 20.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      // Add other text styling as needed
                    ),
                  )
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                        hintText: "Enter OTP",
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
                        setState(() {
                          isValidated = true;
                        });
                      },
                      text: 'Validate',
                      bgColor: Configuration.primaryColor,
                      fontSize: 16.sp,
                      fontColor: Configuration.thirdColor,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
