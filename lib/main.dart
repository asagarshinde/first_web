import 'package:first_web/screens/main/main_screen.dart';
import 'package:flutter/material.dart';

import 'LandingPage/LandingPage.dart';
import 'NavBar/NavBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Montserrat"),
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//               begin: Alignment.centerLeft,
//               end: Alignment.centerRight,
//               colors: [
//                 Color.fromRGBO(195, 20, 50, 1.0),
//                 Color.fromRGBO(36, 11, 54, 1.0)
//               ]),
//         ),
//         child: SingleChildScrollView(
//           child: Column(
//             children: <Widget>[
//               Navbar(),
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                     vertical: 20.0, horizontal: 40.0),
//                 child: LandingPage(),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
