import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:uppl/Constants/configuration.dart';

import 'Navigation/Router/app_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context,_,__) {
        return MaterialApp.router(
          routerConfig: _appRouter.config(),
          title: 'UPPL',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                seedColor: Configuration.secondaryColor,
                primary: Configuration.primaryColor),
            useMaterial3: true,
          ),
        );
      }
    );
  }
}
