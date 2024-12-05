import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:uppl/API/api_services.dart';
import 'package:uppl/Helper/toast.dart';

import '../../Constants/configuration.dart';
import 'Widgets/send_otp_widget.dart';
import 'Widgets/verify_otp_widgets.dart';

@RoutePage()
class VerifiedScreen extends StatefulWidget {
  const VerifiedScreen({super.key, required this.mobile});

  final String mobile;

  @override
  State<VerifiedScreen> createState() => _VerifiedScreenState();
}

class _VerifiedScreenState extends State<VerifiedScreen> {
  bool agreed = false;
  final phoneController = TextEditingController();
  bool isOtpSent = false;
  String? otp;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      debugPrint("TextEditingController ${widget.mobile}");
      setState(() {
        phoneController.text = widget.mobile;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Configuration.thirdColor,
      appBar: Configuration.appBar,
      // drawer: const CustomNavDrawer(),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 2.w,
          vertical: 1.h,
        ),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 14.h,
            ),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
              child: !isOtpSent
                  ? SendOtpWidget(
                      key: const ValueKey('SendOtpWidget'),
                      phoneController: phoneController,
                      agreed: agreed,
                      changeOnTap: (val) {
                        setState(() {
                          agreed = val;
                        });
                      },
                      login: (String val) {
                        login();
                      },
                    )
                  : VerifyOtpWidget(
                      key: const ValueKey('VerifyOtpWidget'),
                      phoneController: phoneController,
                      verify: (String val) {
                        setState(() {
                          otp = val;
                        });
                        verifyOTP();
                      },
                      resendOTP: () {
                        login();
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }

  void login() async {
    final response = await ApiService.instance
        .sendRegistrationOTP(phoneController.text, context);
    if (response.status == 1) {
      CustomToast.showSuccessToast(
          context, "Successful", "OTP Sent Successfully");
      setState(() {
        isOtpSent = true;
      });
    } else {
      CustomToast.showWarningToast(
          context, "Something Went Wrong", response.message ?? "Error");
    }
  }

  void verifyOTP() async {
    final response = await ApiService.instance
        .verifyOTP("verify-otp", phoneController.text, otp, 1, context);
    if (response.status == 1) {
      CustomToast.showSuccessToast(
          context, "Successful", "Mobile Verified Successfully");
      AutoRouter.of(context).popForced(phoneController.text);
    } else {
      CustomToast.showWarningToast(
          context, "Something Went Wrong", response.message ?? "Error");
    }
  }
}
