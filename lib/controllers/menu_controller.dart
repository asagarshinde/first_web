import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  final RxInt _selectedIndex = 0.obs;
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
      _scaffoldKey.currentState!.openEndDrawer();
    } else {
      _scaffoldKey.currentState!.openDrawer();
    }
  }
}
