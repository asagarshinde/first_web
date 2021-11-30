import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraits) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "CloudEthix",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30),
            )
          ],
        )),
      );
    });
  }
}
