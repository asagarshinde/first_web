import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Middle extends StatefulWidget {
  const Middle({Key? key}) : super(key: key);

  @override
  _MiddleState createState() => _MiddleState();
}

class _MiddleState extends State<Middle> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(60.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                constraints: const BoxConstraints(
                    maxWidth: 800, maxHeight: 240),
                child: const Text(
                  "Help Challenge \nCritical Activities \n",
                  style: TextStyle(
                      fontSize: 80,
                      color: Color.fromRGBO(31, 49, 79, 1)),
                ),
              ),
              Container(
                constraints: const BoxConstraints(
                    maxHeight: 240, maxWidth: 500),
                child: const Text(
                  "we are experience professionals who understand that IT services is changing, and are true partners who care about your success",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(31, 49, 79, 1)),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
        Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              width: 400,
              height: 500,
              child: Image.asset('assets/Cloud_database_PNG.png',
                  fit: BoxFit.fitWidth),
            )
          ],
        ),
      ],
    );
  }
}
