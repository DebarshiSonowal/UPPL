import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:uppl/Constants/assets.dart';
import 'package:uppl/Constants/configuration.dart';
import 'package:uppl/Constants/routes.dart';
import 'package:uppl/Navigation/Router/app_router.dart';
import 'package:uppl/Storage/config_storage.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: Configuration.bgGradient,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Configuration.downwardAronai,
              SizedBox(height: 5.h),
              Image.asset(
                CustomAssets.logo, // Ensure this path is correct
                width: 50.w,
                fit: BoxFit.fill,
              ),
              SizedBox(height: 5.h),
              Text(
                'BECOME A MEMBER',
                style: Configuration.primaryFont(
                  fontSize: 19.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 3.h),
              SizedBox(
                width: 80.w,
                child: Configuration.rectangleButton(
                  onPressed: () {
                    context.router.pushNamed(CustomRoutes.signupScreen);
                  },
                  text: 'Join UPPL',
                  bgColor: Configuration.secondaryColor,
                  fontSize: 17.sp,
                ),
              ),
              SizedBox(height: 3.h),
              Divider(
                color: Color(0xffD9C902),
                thickness: 0.3.w,
              ),
              SizedBox(height: 3.h),
              Text(
                'Already a UPPL member?',
                style: Configuration.primaryFont(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 2.h),
              SizedBox(
                width: 80.w,
                child: Configuration.rectangleButton(
                  onPressed: () {
                    context.router.pushNamed(CustomRoutes.loginOtpScreen);
                  },
                  text: 'Log in Here',
                  bgColor: Configuration.thirdColor,
                  fontSize: 17.sp,
                ),
              ),
              const Spacer(),
              Configuration.copyright,
              SizedBox(height: 1.h),
              Configuration.upwardAronai,
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 0), () {
      if (ConfigStorage.instance.isLoggedIn) {
        AutoRouter.of(context).push(const PageRouteInfo(HomeRoute.name));
      }
    });
  }
}
