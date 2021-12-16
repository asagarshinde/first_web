import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MenuController extends GetxController {
  RxInt _selectedIndex = 0.obs;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int get selectedIndex => _selectedIndex.value;

  List<String> get menuItems =>
      ['Home', 'About Us', 'Services', 'Blog', 'Contact Us'];

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  void setMenuIndex(int index) {
    _selectedIndex.value = index;
  }

  void openOrCloseDrawer() {
    if (_scaffoldKey.currentState!.isDrawerOpen) {
      print("ending drawer");
      _scaffoldKey.currentState!.openEndDrawer();
    } else {
      print("opening drawer");
      _scaffoldKey.currentState!.openDrawer();
    }
  }
}
