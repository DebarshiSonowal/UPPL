import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:uppl/Constants/configuration.dart';
import 'package:uppl/Navigation/Navigate.dart';
import 'package:uppl/Repository/repository.dart';
import 'package:uppl/Storage/config_storage.dart';

import 'Navigation/Router/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigStorage.instance.initializeStorage();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Repository()),
      ],
      child: Sizer(builder: (context, _, __) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          key: Navigation.instance.navigatorKey,
          routerConfig: _appRouter.config(),
          title: 'UPPL',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                seedColor: Configuration.secondaryColor,
                primary: Configuration.primaryColor),
            useMaterial3: true,
          ),
        );
      }),
    );
  }
}

extension StringExtension on String {
  String capitalizeFirstOfEach() {
    return split(' ')
        .map((str) => str[0].toUpperCase() + str.substring(1))
        .join(' ');
  }
}
