import 'package:first_web/constants.dart';
import 'package:flutter/material.dart';
import 'package:first_web/responsive.dart';
import 'package:flutter/rendering.dart';

class Bottom extends StatelessWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color.fromRGBO(31, 49, 79, 1)),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 60, 8, 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                    child: const Text(
                      "Get in touch",
                      style: TextStyle(fontSize: 30, color: Colors.white60),
                    )),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                  child: const Text(
                    "\n We ignite the fuel! To revamp your \n business and take "
                    "it to the next level! ",
                    style: TextStyle(fontSize: 20, color: Colors.white60),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                  child: const Text(
                    "Address",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white70,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                  child: const Text(
                    "1st Flr, Off No-2, \n Shankar Chatra Apt 575, \n Opp to Kesari Wada, \n Pune, 411030",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60.0, 60, 0, 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const <Widget>[
                Icon(Icons.phone, color: Colors.white70, size: 100,),
                SizedBox(height: 40,),
                Text("+91 90000 00000", style: TextStyle(fontSize: 20),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(60.0, 60, 120, 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const <Widget>[
                Icon(Icons.email, color: Colors.white70, size: 100,),
                SizedBox(height: 40,),
                Text("admin@cloudethix.com", style: TextStyle(fontSize: 20),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
