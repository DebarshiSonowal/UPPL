import 'dart:async'; // For Timer

import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
// import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:sizer/sizer.dart';
import 'package:uppl/Helper/toast.dart';

import '../../../Constants/configuration.dart';

class VerifyOtpWidget extends StatefulWidget {
  const VerifyOtpWidget(
      {super.key,
      required this.phoneController,
      required this.verify,
      required this.resendOTP});

  final TextEditingController phoneController;
  final Function(String) verify;
  final Function resendOTP;

  @override
  State<VerifyOtpWidget> createState() => _VerifyOtpWidgetState();
}

class _VerifyOtpWidgetState extends State<VerifyOtpWidget> {
  String? otp;
  Timer? _timer;
  int _counter = 30;
  bool _isResendButtonDisabled = true;
  late final PinTheme defaultPinTheme;
  late final PinTheme focusedPinTheme;
  late final PinTheme submittedPinTheme;

  @override
  void initState() {
    super.initState();
    _startTimer();
    defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _counter = 30;
    _isResendButtonDisabled = true;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _isResendButtonDisabled = false;
          _timer?.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'VALIDATE',
          style: Configuration.primaryFont(
            fontSize: 19.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        Text(
          'Your verification code has been sent to ${widget.phoneController.text}',
          style: Configuration.primaryFont(
            fontSize: 15.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
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
            controller: widget.phoneController,
            keyboardType: TextInputType.phone,
            readOnly: true,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              prefixIcon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " +91 | ",
                    style: Configuration.primaryFont(
                      fontSize: 16.sp,
                      color: Colors.black,
                      // Add other text styling as needed
                    ),
                  ),
                ],
              ),
              suffixIcon: const Icon(Icons.edit_note),
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
          height: 4.h,
        ),
        Text(
          'Enter Verification Code',
          style: Configuration.primaryFont(
            fontSize: 15.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 1.h,
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
          height: 2.h,
        ),
        SizedBox(
          width: 80.w,
          child: Configuration.rectangleButton(
            onPressed: () {
              if (otp != null && otp != "" && (otp?.length == 6 ?? false)) {
                widget.verify(otp!);
              } else {
                CustomToast.showWarningToast(
                    context, "Wrong OTP", "Please Enter a valid OTP");
              }
            },
            text: "Continue",
            fontColor: Configuration.thirdColor,
            fontSize: 15.sp,
            bgColor: Configuration.primaryColor,
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'Resend OTP in 00:${_counter.toString().padLeft(2, '0')}',
          style: Configuration.primaryFont(
            fontSize: 15.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 2.h,
        ),
        GestureDetector(
          onTap: _isResendButtonDisabled
              ? null
              : () {
                  widget.resendOTP();
                  _startTimer();
                },
          child: Text(
            'Resend OTP',
            style: Configuration.primaryFont(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
              color: _isResendButtonDisabled
                  ? Colors.grey
                  : Configuration.primaryColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
