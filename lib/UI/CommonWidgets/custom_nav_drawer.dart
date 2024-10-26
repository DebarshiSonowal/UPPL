import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:uppl/Constants/routes.dart';
import 'package:uppl/Navigation/Router/app_router.dart';

import '../../Constants/assets.dart';
import '../../Constants/configuration.dart';

class CustomNavDrawer extends StatefulWidget {
  const CustomNavDrawer({super.key});

  @override
  State<CustomNavDrawer> createState() => _CustomNavDrawerState();
}

class _CustomNavDrawerState extends State<CustomNavDrawer> {
  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      backgroundColor: Configuration.navBackgroundColor,
      children: [
        DrawerHeader(
          child: Column(
            children: [
              Image.asset(
                CustomAssets.logo, // Ensure this path is correct
                width: 20.w,
                fit: BoxFit.fill,
              ),
              Text(
                "United People's Party Liberal (UPPL)",
                style: Configuration.primaryFont(
                  fontSize: 15.sp,
                  color: Configuration.titleColor,
                  fontWeight: FontWeight.bold,
                  // Add other text styling as needed
                ),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        ListTile(
          onTap: (){
            AutoRouter.of(context).pushNamed(CustomRoutes.homeScreen);
          },
          leading: Icon(
            Icons.home,
            size: 25.sp,
            color: Colors.black,
          ),
          title: Text(
            "Home",
            style: Configuration.primaryFont(
              fontSize: 15.sp,
            ),
          ),
          trailing: const Icon(Icons.arrow_forward_ios,color: Configuration.secondaryColor,),
        ),
        const Divider(),
        ListTile(
          onTap: (){
            // AutoRouter.of(context).pushNamed(CustomRoutes.homeScreen);
          },
          leading: Icon(
            Icons.dashboard,
            size: 25.sp,
            color: Colors.black,
          ),
          title: Text(
            "Dashboard",
            style: Configuration.primaryFont(
              fontSize: 15.sp,
            ),
          ),
          trailing: const Icon(Icons.arrow_forward_ios,color: Configuration.secondaryColor,),
        ),
        const Divider(),
        ListTile(
          onTap: (){
            // AutoRouter.of(context).pushNamed(CustomRoutes.homeScreen);
          },
          leading: Icon(
            Icons.people,
            size: 25.sp,
            color: Colors.black,
          ),
          title: Text(
            "The Party",
            style: Configuration.primaryFont(
              fontSize: 15.sp,
            ),
          ),
          trailing: const Icon(Icons.arrow_forward_ios,color: Configuration.secondaryColor,),
        ),
        const Divider(),
        ListTile(
          onTap: (){
            // AutoRouter.of(context).pushNamed(CustomRoutes.homeScreen);
          },
          leading: Icon(
            Icons.groups,
            size: 25.sp,
            color: Colors.black,
          ),
          title: Text(
            "Leadership",
            style: Configuration.primaryFont(
              fontSize: 15.sp,
            ),
          ),
          trailing: const Icon(Icons.arrow_forward_ios,color: Configuration.secondaryColor,),
        ),
        const Divider(),
        ListTile(
          onTap: (){
            // AutoRouter.of(context).pushNamed(CustomRoutes.homeScreen);
          },
          leading: Icon(
            Icons.network_wifi_sharp,
            size: 25.sp,
            color: Colors.black,
          ),
          title: Text(
            "Cell",
            style: Configuration.primaryFont(
              fontSize: 15.sp,
            ),
          ),
          trailing: const Icon(Icons.arrow_forward_ios,color: Configuration.secondaryColor,),
        ),
        const Divider(),
        ListTile(
          onTap: (){
            // AutoRouter.of(context).pushNamed(CustomRoutes.homeScreen);
          },
          leading: Icon(
            Icons.image,
            size: 25.sp,
            color: Colors.black,
          ),
          title: Text(
            "Media",
            style: Configuration.primaryFont(
              fontSize: 15.sp,
            ),
          ),
          trailing: const Icon(Icons.arrow_forward_ios,color: Configuration.secondaryColor,),
        ),
        const Divider(),
        ListTile(
          onTap: (){
            // AutoRouter.of(context).pushNamed(CustomRoutes.homeScreen);
          },
          leading: Icon(
            Icons.calendar_month,
            size: 25.sp,
            color: Colors.black,
          ),
          title: Text(
            "Upcoming Events",
            style: Configuration.primaryFont(
              fontSize: 15.sp,
            ),
          ),
          trailing: const Icon(Icons.arrow_forward_ios,color: Configuration.secondaryColor,),
        ),
        const Divider(),
        ListTile(
          onTap: (){
            AutoRouter.of(context).pushNamed(CustomRoutes.homeScreen);
          },
          leading: Icon(
            Icons.currency_rupee,
            size: 25.sp,
            color: Colors.black,
          ),
          title: Text(
            "Make Donation",
            style: Configuration.primaryFont(
              fontSize: 15.sp,
            ),
          ),
          trailing: const Icon(Icons.arrow_forward_ios,color: Configuration.secondaryColor,),
        ),
        const Divider(),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10.w,
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Configuration.primaryColor,
            ),
            onPressed: () {},
            child: Text(
              "Log Out",
              style: Configuration.primaryFont(
                fontSize: 15.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                // Add other text styling as needed
              ),
            ),
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(FontAwesomeIcons.xTwitter),
            SizedBox(
              width: 2.w,
            ),
            const Icon(FontAwesomeIcons.instagram),
            SizedBox(
              width: 2.w,
            ),
            const Icon(FontAwesomeIcons.facebook),
          ],
        ),
      ],
    );
  }
}
