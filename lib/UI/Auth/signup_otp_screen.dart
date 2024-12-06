import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:pinput/pinput.dart';
import 'package:sizer/sizer.dart';
import 'package:uppl/API/api_services.dart';

import '../../Constants/assets.dart';
import '../../Constants/configuration.dart';
import '../../Helper/toast.dart';
import '../../Navigation/Router/app_router.dart';

@RoutePage()
class SignupOtpScreen extends StatefulWidget {
  const SignupOtpScreen({super.key, required this.phonenumber});

  final String phonenumber;

  @override
  State<SignupOtpScreen> createState() => _SignupOtpScreenState();
}

class _SignupOtpScreenState extends State<SignupOtpScreen> {
  String? otp;
  late final PinTheme defaultPinTheme;
  late final PinTheme focusedPinTheme;
  late final PinTheme submittedPinTheme;

  @override
  void initState() {
    super.initState();
    defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
    );
    focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
      color: Colors.white,
    );

    submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );
  }

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
            GestureDetector(
              onTap: () {
                AutoRouter.of(context).popForced();
              },
              child: SizedBox(
                height: 6.h,
                child: Row(
                  children: [
                    SizedBox(
                      width: 4.w,
                    ),
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
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
              'Please Enter Your OTP',
              style: Configuration.primaryFont(
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
                color: Configuration.thirdColor,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            SizedBox(
              width: 80.w,
              child: Pinput(
                length: 6,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                submittedPinTheme: submittedPinTheme,
                validator: (s) {
                  // Remove the hardcoded validation
                  return s?.length == 6 ? null : 'Please enter a 6-digit OTP';
                },
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                showCursor: true,
                onCompleted: (pin) {
                  setState(() {
                    otp = pin;
                  });
                },
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            SizedBox(
              width: 85.w,
              child: Configuration.rectangleButton(
                onPressed: () {
                  if (otp != null && otp!.length == 6) {
                    verifyOTP(context, otp ?? "");
                  } else {
                    CustomToast.showWarningToast(
                        context, "Error", "Please Enter a valid OTP");
                  }
                },
                text: 'Verify OTP',
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

  void verifyOTP(BuildContext context, String otp) async {
    debugPrint("Verify");
    final response = await ApiService.instance(context)
        .verifyOTP("verify-otp", widget.phonenumber, otp, "1", context);
    if (response.status == 1) {
      AutoRouter.of(context)
          .push(ProvideDetailsRoute(mobile: widget.phonenumber));
    }
  }
}
