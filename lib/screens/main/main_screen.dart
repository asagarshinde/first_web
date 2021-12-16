import 'package:first_web/constants.dart';
import 'package:first_web/controllers/menu_controller.dart';
import 'package:first_web/responsive.dart';
import 'package:first_web/screens/main/components/bottom.dart';
import 'package:first_web/screens/main/components/middle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

import 'components/header.dart';
import 'components/home_page_cards.dart';
import 'components/navbar.dart';
import 'components/side_menu.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromRGBO(195, 20, 50, 1.0),
                Color.fromRGBO(36, 11, 54, 1.0)
              ]),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              NavBar(),
            ],
          ),
        ),
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _controller.scaffoldKey,
        drawer: SideMenu(),
        body: Container(
          height: double.infinity,
          decoration: const BoxDecoration(color: Colors.white60),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Header(),
                if (Responsive.isDesktop(context)) const Middle(),
                Container(
                  padding: const EdgeInsets.fromLTRB(100, 0, 100, 30),
                  child: IntrinsicHeight(
                    child: HomePageCards(),
                  ),
                ),
                const Bottom()
              ],
            ),
          ),
        ));
  }
}
