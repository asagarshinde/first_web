import 'package:first_web/controllers/menu_controller.dart';
import 'package:first_web/responsive.dart';
import 'package:first_web/screens/layout.dart';
import 'package:first_web/screens/main/components/bottom.dart';
import 'package:first_web/screens/main/components/middle.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'components/header.dart';
import 'components/home_page_cards.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  // final MenuController _controller = Get.put(MenuController());
  const MainScreen({Key? key}) : super(key: key);

  getPageView(context) {
    return Column(
      children: [
        if (Responsive.isDesktop(context)) const Middle(),
        Container(
          padding: const EdgeInsets.fromLTRB(100, 0, 100, 30),
          child: IntrinsicHeight(
            child: HomePageCards(),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MyLayout(getPageView(context));
  }
}
