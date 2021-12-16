import 'package:first_web/constants.dart';
import 'package:first_web/controllers/menu_controller.dart';
import 'package:first_web/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

import 'package:first_web/responsive.dart';


class WebMenu extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  WebMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Obx(() => Row(
          children: List.generate(
              _controller.menuItems.length,
              (index) => WebMenuItem(
                    text: _controller.menuItems[index],
                    isActive: index == _controller.selectedIndex,
                    press: () => _controller.setMenuIndex(index),
                  )),
        ));
  }
}

class WebMenuItem extends StatefulWidget {
  const WebMenuItem(
      {Key? key,
      required this.isActive,
      required this.text,
      required this.press});

  final bool isActive;
  final String text;
  final VoidCallback press;

  @override
  State<WebMenuItem> createState() => _WebMenuItemState();
}

class _WebMenuItemState extends State<WebMenuItem> {
  bool _isHover = false;

  Color _borderColor() {
    if (widget.isActive) {
      return kPrimaryColor;
    } else if (!widget.isActive & _isHover) {
      return kPrimaryColor.withOpacity(0.4);
    }
    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed('/${widget.text}'),
      onHover: (value) {
        setState(() {
          if (Responsive.isMobile(context)) {
            print("mobile");
          } else if (Responsive.isDesktop(context)) {
            print("desktop");
          } else if (Responsive.isTablet(context)) {
            print("tablet");
          }
          print(MediaQuery.of(context).size.width);
          _isHover = true;
        });
      },
      child: AnimatedContainer(
        duration: kDefaultDuration,
        margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        decoration: BoxDecoration(
            border:
                Border(bottom: BorderSide(color: _borderColor(), width: 3))),
        child: Text(
          widget.text,
          style: TextStyle(
              color: Colors.white,
              fontWeight:
                  widget.isActive ? FontWeight.w600 : FontWeight.normal),
        ),
      ),
    );
  }
}
