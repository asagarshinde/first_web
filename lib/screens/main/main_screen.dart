import 'package:first_web/controllers/menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

import 'components/header.dart';
import 'components/navbar.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromRGBO(195, 20, 50, 1.0),
                Color.fromRGBO(36, 11, 54, 1.0)
              ]),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              NavBar(),
            ],
          ),
        ),
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // key: _controller.scaffoldKey,
        body: Container(
      height: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white60
        // gradient: LinearGradient(
        //   begin: Alignment.centerLeft,
        //   end: Alignment.centerRight,
        //   colors: [
        //     Color.fromRGBO(195, 20, 50, 1.0),
        //     Color.fromRGBO(36, 42, 90, 1.0)
        //   ],
        // ),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(60.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        constraints:
                            BoxConstraints(maxWidth: 800, maxHeight: 240),
                        child: const Text(
                          "Help Challenge \nCritical Activities \n",
                          style: TextStyle(fontSize: 80, color: Color.fromRGBO(31, 49, 79, 1)),
                        ),
                      ),
                      Container(
                        constraints:
                            BoxConstraints(maxHeight: 240, maxWidth: 500),
                        child: const Text(
                          "we are experience professionals who understand that IT services is changing, and are true partners who care about your success",
                          style: TextStyle(fontSize: 20, color: Color.fromRGBO(31, 49, 79, 1)),
                        ),
                      ),
                      SizedBox(height: 40,),
                      Container(
                        child: IntrinsicHeight(
                          child: Row(
                            children: const [
                              Text(
                                "DevOps",
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w100,
                                    color: Color.fromRGBO(31, 49, 79, 1)),
                              ),
                              VerticalDivider(
                                thickness: 1.0,
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Text(
                                "Cloud",
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w100,
                                    color: Color.fromRGBO(31, 49, 79, 1)),
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Text(
                                "Consulting",
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w100,
                                    color: Color.fromRGBO(31, 49, 79, 1)),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      width: 500,
                      height: 500,
                      child: Image.asset('assets/Cloud_database_PNG.png',
                      fit: BoxFit.fitWidth),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
