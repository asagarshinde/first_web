import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import '../../../constants.dart';
import 'web_menu.dart';

class Header extends StatelessWidget {

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
                      Container(
                        child: Image.asset('assets/CloudEthix_logo.jpeg', fit: BoxFit.contain),
                      ),
                      const Spacer(),
                      WebMenu()
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
