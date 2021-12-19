import 'package:first_web/controllers/menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'main/components/bottom.dart';
import 'main/components/header.dart';
import 'main/components/side_menu.dart';


class Layout extends StatelessWidget {

  Widget page;
  Layout(this.page);

  final MenuController controller = Get.put(MenuController());
  // final controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      drawer: SideMenu(),
      body: Container(
        color: Colors.white60,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              page,
              const Bottom()
            ],
          ),
        ),
      ),
    );
  }
}
