import 'package:first_web/controllers/menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants.dart';

class SideMenu extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color.fromRGBO(31, 49, 79, 1),
        child: Obx(
          () => ListView(
            children: [
              DrawerHeader(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding * 3.5),
                  child: Container(
                    child: Image.asset('assets/CloudEthix_logo.jpeg',
                        fit: BoxFit.contain),
                  ),
                ),
              ),
              ...List.generate(
                _controller.menuItems.length,
                (index) => DrawerItem(
                  isActive: index == _controller.selectedIndex,
                  title: _controller.menuItems[index],
                  press: () {
                    _controller.setMenuIndex(index);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerItem extends StatefulWidget {
  final String title;
  final bool isActive;
  final VoidCallback press;

  DrawerItem({
    Key? key,
    required this.title,
    required this.isActive,
    required this.press,
  }) : super(key: key);

  @override
  State<DrawerItem> createState() => _DrawerItemState();
}

class _DrawerItemState extends State<DrawerItem> {
  final MenuController _controller = Get.put(MenuController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        selected: widget.isActive,
        selectedTileColor: const Color.fromRGBO(31, 49, 79, 1),
        onTap: () {
          print("Clicked ${widget.title}");
          _controller.openOrCloseDrawer();
          Get.toNamed('/${widget.title}');
        },
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }

}
