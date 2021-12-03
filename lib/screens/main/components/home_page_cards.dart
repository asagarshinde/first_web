import 'package:first_web/controllers/card_list_controller.dart';
import 'package:first_web/controllers/menu_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../constants.dart';

// class HomePageCards extends StatefulWidget {
//
//   final MenuController _controller = Get.put(MenuController());
//
//   HomePageCards({Key? key,required this.header, required this.description, required this.icon});
//
//   final String header;
//   final String description;
//   final IconData icon;
//
//   @override
//   State<HomePageCards> createState() => _HomePageCardsState();
// }
//
// class _HomePageCardsState extends State<HomePageCards> {
//   @override
//   Widget build(BuildContext context) {
//     bool _isHover = false;
//     // inspired from: https://ca.technology/?utm_source=clutch.co&utm_medium=referral&utm_campaign=directory
//     return AnimatedContainer(
//       duration: kDefaultDuration,
//       child: InkWell(
//         onHover: (value){
//           setState(() {
//             _isHover = true;
//             print(widget.header);
//           });
//         },
//         child: Card(
//           elevation: 5,
//           child: Container(
//             padding: const EdgeInsets.all(10.0),
//             width: 250,
//             height: 300,
//             decoration: const BoxDecoration(
//               color: Color.fromRGBO(234, 234, 244, 1),
//               borderRadius:
//               BorderRadius.all(Radius.circular(8.0)),
//             ),
//             child: Column(
//               children: [
//                 Text(
//                   widget.header,
//                   style: const TextStyle(
//                       fontSize: 40,
//                       fontWeight: FontWeight.w100,
//                       color:
//                       Color.fromRGBO(31, 49, 79, 1)),
//                 ),
//                 Icon(
//                   widget.icon,
//                   size: 90,
//                   color: const Color.fromRGBO(144, 82, 254, 1),
//                 ),
//                 SizedBox(
//                   width: 150,
//                   child: Text(
//                     widget.description,
//                     style: const TextStyle(
//                         fontSize: 15,
//                         color: Color.fromRGBO(
//                             31, 49, 79, 1)),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class HomePageCards extends StatelessWidget {
  final CardListController _cardController = Get.put(CardListController());

  HomePageCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Row(
        children: List.generate(
            _cardController.cardListItems.length,
            (index) => HomePageCardItem(
                description: _cardController.cardListItems[index]
                        ['description']
                    .toString(),
                icon: _cardController.cardListItems[index]['icon'].toString(),
                title:
                    _cardController.cardListItems[index]['title'].toString(),
                isActive: index == _cardController.hoveredIndex,
                press: () => _cardController.setCardIndex(index)))));
  }
}

class HomePageCardItem extends StatefulWidget {
  const HomePageCardItem(
      {Key? key,
      required this.description,
      required this.icon,
      required this.title,
      required this.press,
      required this.isActive});

  final String description;
  final String icon;
  final String title;
  final VoidCallback press;
  final bool isActive;

  @override
  _HomePageCardItemState createState() => _HomePageCardItemState();
}

class _HomePageCardItemState extends State<HomePageCardItem> {
  bool _isHover = false;
  Color cardColor = Color.fromRGBO(234, 234, 244, 1);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("tapped ");
        print('card hover $_isHover');
      },
      onHover: (value) {
        setState(() {
          _isHover = value;
          if (value) {
            cardColor = Colors.black26;
          } else {
            cardColor = Color.fromRGBO(234, 234, 244, 1);
          }
        });
      },
      child: Card(
        elevation: 5,
        child: Container(
          padding: const EdgeInsets.all(10.0),
          width: 250,
          height: 300,
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          child: Column(
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w100,
                    color: Color.fromRGBO(31, 49, 79, 1)),
              ),
              Icon(
                IconData(int.parse(widget.icon), fontFamily: 'MaterialIcons'),
                size: 90,
                color: const Color.fromRGBO(144, 82, 254, 1),
              ),
              SizedBox(
                width: 150,
                child: Text(
                  widget.description,
                  style: const TextStyle(
                      fontSize: 15, color: Color.fromRGBO(31, 49, 79, 1)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
