import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:uppl/Constants/configuration.dart';
import 'package:uppl/Helper/toast.dart';

class SendOtpWidget extends StatefulWidget {
  const SendOtpWidget(
      {super.key,
      required this.phoneController,
      required this.agreed,
      required this.changeOnTap,
      required this.login});

  final bool agreed;
  final TextEditingController phoneController;
  final Function(bool) changeOnTap;
  final Function(String) login;

  @override
  State<SendOtpWidget> createState() => _SendOtpWidgetState();
}

class _SendOtpWidgetState extends State<SendOtpWidget> {
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
          height: 2.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 8.w,
          ),
          child: TextField(
            cursorColor: Colors.black,
            controller: widget.phoneController,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              prefix: Text(
                "+91 | ",
                style: Configuration.primaryFont(
                  fontSize: 14.sp,
                  color: Colors.black,
                  // Add other text styling as needed
                ),
              ),
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
          height: 2.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 2.w,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                  fillColor: WidgetStateProperty.all(
                    Colors.white,
                  ),
                  value: widget.agreed,
                  checkColor: Colors.black,
                  onChanged: (val) {
                    widget.changeOnTap(val ?? false);
                  }),
              SizedBox(
                width: 4.w,
              ),
              SizedBox(
                width: 70.w,
                child: RichText(
                  text: TextSpan(
                    text:
                        "I certify that the information provided above is accurate. I also acknowledge that all further communication will happen based on the details I have provided above.",
                    style: Configuration.primaryFont(
                      color: Colors.white,
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 4.h,
        ),
        SizedBox(
          width: 80.w,
          child: Configuration.rectangleButton(
            onPressed: () {
              if (widget.phoneController.text.isNotEmpty && widget.agreed) {
                widget.login(widget.phoneController.text);
              } else {
                CustomToast.showWarningToast(
                    context,
                    "Oops Something Went Wrong",
                    "Please enter a valid phone number");
              }
            },
            text: "Get Verification Code",
            fontColor: Configuration.thirdColor,
            fontSize: 15.sp,
            bgColor: Configuration.primaryColor,
          ),
        ),
      ],
    );
  }
}
