import 'package:first_web/controllers/menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import '../../../constants.dart';
import '../../../responsive.dart';
import 'web_menu.dart';

class Header extends StatelessWidget {

  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color.fromRGBO(31, 49, 79, 1),
      child: SafeArea(
        child: Column(
          children: [
            Container(
              constraints: const BoxConstraints(maxWidth: kMaxWidth),
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Column(
                children: [
                  Row(
                    children: [
                      if(!Responsive.isDesktop(context))
                        IconButton(
                          icon: const Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            _controller.openOrCloseDrawer();
                          },
                        ),
                      Container(
                        child: Image.asset(
                            'assets/CloudEthix_logo.jpeg', fit: BoxFit.contain),
                      ),
                      const Spacer(),
                      if (Responsive.isDesktop(context)) WebMenu(),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


