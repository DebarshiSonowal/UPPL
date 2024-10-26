import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:uppl/Constants/assets.dart';
import 'package:uppl/Constants/routes.dart';

class Configuration {
  static const primaryColor = Color(0xffFDEA00);
  static const secondaryColor = Color(0xff42B72A);
  static const thirdColor = Color(0xff0866FF);
  static const subTextColor = Color(0xffB29808);
  static const homeBgColor = Color(0xffFFFDE6);
  static const subTitleColor = Color(0xff2C8556);
  static const titleColor = Color(0xff008746);
  static const navBackgroundColor = Color(0xffFFFDEB);

  /// This function generates a TextStyle with a fixed font family,
  /// allowing customizable size, color, and weight.
  static TextStyle primaryFont({
    double fontSize = 14.0,
    Color? color,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return GoogleFonts.inter(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
    );
  }

  static TextStyle copyrightFont({
    double fontSize = 13.0,
    Color color = const Color(0xff0043B0),
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return GoogleFonts.montserrat(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
    );
  }

  static CupertinoButton rectangleButton({
    required Function onPressed,
    required String text,
    required Color bgColor,
    double? fontSize,
    Color? fontColor,
    FontWeight? fontWeight,
  }) {
    return CupertinoButton(
      color: bgColor,
      onPressed: () => onPressed(),
      child: Text(
        text,
        style: primaryFont(
          fontSize: fontSize ?? 14,
          color: fontColor ?? Colors.white,
          fontWeight: fontWeight ?? FontWeight.bold,
        ),
      ),
    );
  }

  static RichText copyright = RichText(
    text: TextSpan(
      children: const [
        TextSpan(text: "Copyright © 2024"),
        TextSpan(
          text: "\n",
        ),
        TextSpan(
          text: "United People’s Party Liberal. All Rights Reserved.",
        ),
      ],
      style: copyrightFont(),
    ),
    textAlign: TextAlign.center,
  );

  static RichText copyrightColored = RichText(
    text: TextSpan(
      children: const [
        TextSpan(text: "Copyright © 2024"),
        TextSpan(
          text: "\n",
        ),
        TextSpan(
          text: "United People’s Party Liberal. All Rights Reserved.",
        ),
      ],
      style: copyrightFont(
        color: Configuration.primaryColor,
      ),
    ),
    textAlign: TextAlign.center,
  );

  static AppBar appBar = AppBar(
    centerTitle: false,
    backgroundColor: Configuration.primaryColor,
    // leading: Icon(
    //   Icons.menu,
    //   size: 23.sp,
    // ),
    title: SizedBox(
      width: 50.w,
      height: 5.h,
      child: Text(
        "United People's Party Liberal (UPPL)",
        style: Configuration.primaryFont(
          fontSize: 15.sp,
          color: Colors.black87,
          fontWeight: FontWeight.bold,
          // Add other text styling as needed
        ),
        maxLines: 2,
      ),
    ),
    actions: [
      Icon(
        Icons.search,
        color: Colors.black,
        size: 23.sp,
      ),
      SizedBox(
        width: 4.w,
      ),
      Icon(
        Icons.notifications,
        color: Colors.black,
        size: 23.sp,
      ),
      SizedBox(
        width: 4.w,
      ),
    ],
  );
  static BottomNavigationBar bottomNavigationBar(BuildContext context)=>BottomNavigationBar(
    selectedItemColor: Colors.black,
    backgroundColor: Configuration.primaryColor,
    onTap: (index){
      switch (index) {
        case 0: AutoRouter.of(context).pushNamed(CustomRoutes.homeScreen);
        case 1: AutoRouter.of(context).pushNamed(CustomRoutes.dashboardScreen);
        case 2: AutoRouter.of(context).pushNamed(CustomRoutes.profileScreen);
      }
    },
    items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.dashboard),label: "Dashboard"),
      BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),

    ],
  );


  static Widget upwardAronai = SvgPicture.asset(
    CustomAssets.aronaiUpwards,
    fit: BoxFit.cover,
      width: 100.w,
  );
  static Widget upwardAronaiColor = SvgPicture.asset(
    CustomAssets.aronaiUpwardsColored,
    fit: BoxFit.cover,
    width: 100.w,
  );
  static Widget downwardAronai = SvgPicture.asset(
    CustomAssets.aronaiDownwards,
    fit: BoxFit.cover,
    width: 100.w,
  );

  static const LinearGradient bgGradient = LinearGradient(
    colors: [Color(0xFFD1E3FF), Color(0xFFFFF689)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static const LinearGradient bgDetailsGradient = LinearGradient(
    colors: [Color(0xFFFFFDE6), Color(0xFFFBF493)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static const LinearGradient membershipGradient = LinearGradient(
    colors: [Color(0xFFFDEA00), Color(0xFFFDEA00), Color(0xFF56C224)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  static const LinearGradient addMemberGradient = LinearGradient(
    colors: [Color(0xFFD1E3FF), Color(0xFFFFF689),],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  static const LinearGradient recentHighlightGradient = LinearGradient(
    colors: [
      Color(0xFFFDEA00),
      Color(0xFF978C00),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
