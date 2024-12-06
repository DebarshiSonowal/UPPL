import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:pinput/pinput.dart';
import 'package:sizer/sizer.dart';
import 'package:uppl/Navigation/Router/app_router.dart';

import '../../API/api_services.dart';
import '../../Constants/assets.dart';
import '../../Constants/configuration.dart';
import '../../Helper/toast.dart';

@RoutePage()
class AddMemberScreen extends StatefulWidget {
  const AddMemberScreen({super.key, this.mobile});

  final String? mobile;

  @override
  State<AddMemberScreen> createState() => _AddMemberScreenState();
}

class _AddMemberScreenState extends State<AddMemberScreen> {
  bool agreed = true, isOtpSent = false;
  final mobileNumber = TextEditingController();
  String? otp;

  late final PinTheme defaultPinTheme;
  late final PinTheme focusedPinTheme;
  late final PinTheme submittedPinTheme;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      setState(() {
        mobileNumber.text = widget.mobile ?? "";
        Configuration.currentIndex = 1;
      });
    });
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
        color: Colors.white,
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
                              readOnly: isOtpSent,
                              controller: mobileNumber,
                              cursorColor: Colors.black,
                              keyboardType: TextInputType.phone,
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
                          isOtpSent
                              ? SizedBox(
                                  width: 80.w,
                                  child: Pinput(
                                    length: 6,
                                    defaultPinTheme: defaultPinTheme,
                                    focusedPinTheme: focusedPinTheme,
                                    submittedPinTheme: submittedPinTheme,
                                    validator: (s) {
                                      // Remove the hardcoded validation
                                      return s?.length == 6
                                          ? null
                                          : 'Please enter a 6-digit OTP';
                                    },
                                    pinputAutovalidateMode:
                                        PinputAutovalidateMode.onSubmit,
                                    showCursor: true,
                                    onCompleted: (pin) {
                                      setState(() {
                                        otp = pin;
                                      });
                                    },
                                  ),
                                )
                              : SizedBox(
                                  height: 1.h,
                                ),
                          isOtpSent
                              ? SizedBox(
                                  height: 1.h,
                                )
                              : Container(),
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
                                // AutoRouter.of(context).pushNamed(
                                //     CustomRoutes.addMemberDetailsScreen);
                                if (!isOtpSent) {
                                  if (mobileNumber.text.length == 10) {
                                    sendOTP();
                                  } else {
                                    CustomToast.showWarningToast(
                                      context,
                                      "Invalid Input",
                                      "Please enter a valid 10-digit mobile number",
                                    );
                                  }
                                } else {
                                  if (mobileNumber.text.length == 10 &&
                                      otp != null &&
                                      otp!.length == 6) {
                                    verifyOTP();
                                  } else {
                                    CustomToast.showWarningToast(
                                      context,
                                      "Invalid Input",
                                      "Please enter a valid 10-digit mobile number and 6-digit OTP",
                                    );
                                  }
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
                                    isOtpSent
                                        ? "Verify OTP"
                                        : "Get Verification Code",
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

  Future<void> sendOTP() async {
    final response = await ApiService.instance(context)
        .sendRegistrationOTP(mobileNumber.text, context);
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

  Future<void> verifyOTP() async {
    final response = await ApiService.instance(context)
        .verifyOTP("verify-otp", mobileNumber.text, otp, 1, context);
    if (response.status == 1) {
      CustomToast.showSuccessToast(
          context, "Successful", "Mobile Verified Successfully");
      AutoRouter.of(context)
          .push(AddMemberDetailsRoute(mobile: mobileNumber.text));
    } else {
      CustomToast.showWarningToast(
          context, "Something Went Wrong", response.message ?? "Error");
    }
  }
}
