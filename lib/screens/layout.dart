import 'package:first_web/controllers/menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'main/components/bottom.dart';
import 'main/components/header.dart';
import 'main/components/side_menu.dart';

class MyLayout extends StatefulWidget {

  Widget page;
  MyLayout(this.page, {Key? key}) : super(key: key);

  @override
  State<MyLayout> createState() => _MyLayoutState();
}

class _MyLayoutState extends State<MyLayout> {
  // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  // GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;
  final MenuController controller = Get.put(MenuController());

  // final controller = Get.find();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        key: controller.scaffoldKey,
        preferredSize: Size( MediaQuery.of(context).size.width,100),
        child: Header(),
      ),
      key: controller.scaffoldKey,
      drawer: SideMenu(),
      body: Container(
        color: Colors.white60,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Header(),
              widget.page,
              const Bottom()
            ],
          ),
        ),
      ),
    );
  }
}
