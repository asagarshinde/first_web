import 'dart:developer';

import 'package:first_web/constants.dart';
import 'package:first_web/controllers/menu_controller.dart';
import 'package:first_web/screens/contact_us/contact_us.dart';
import 'package:first_web/screens/main/main_screen.dart';
import 'package:first_web/screens/services/services_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: BindingsBuilder(() => {Get.put(MenuController())}),
      title: 'CloudEthix',
      routes: {
        '/Home': (context) => const MainScreen(),
        '/Contact Us': (context) => const ContactUsPage(),
        '/Services' : (context) => const ServiceScreen()
      },
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBgColor,
        primarySwatch: Colors.blue,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(backgroundColor: kPrimaryColor),
        ),
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: kBodyTextColor),
          bodyText2: TextStyle(color: kBodyTextColor),
          headline5: TextStyle(color: kDarkBlackColor),
        ),
      ),
      home: const MainScreen(),
    );
  }
}
