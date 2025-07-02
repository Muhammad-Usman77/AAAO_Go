import 'package:flutter/material.dart';

class Stackwidget extends StatelessWidget {
  Stackwidget({super.key});
  final List<Color> itemColors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    // Colors.purple,
  ];
  final List<String> itemPics = [
    'assets/Ellipse 2.png',
    'assets/Ellipse 3.png',
    'assets/Ellipse 4.png',
    'assets/Ellipse 5.png',
    'assets/Ellipse 6.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            flex: 1,
            child: Text(
              'Drivers Viewing your Ride:',
              style: TextStyle(color: Colors.white, fontSize: 12),
            )),
        Expanded(
          flex: 1,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.topRight,
            children: [
              for (int i = 0; i < itemColors.length; i++)
                Positioned(
                  left: i *
                      20.0, // Adjust this value to control the overlap amount
                  child: Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage(itemPics[i]))
                        //   color: itemColors[i],
                        // borderRadius: BorderRadius.circular(10),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.black.withOpacity(0.2),
                        //     blurRadius: 5,
                        //     offset: Offset(0, 3),
                        //   ),
                        // ],
                        ),
                    child: Center(child: Image(image: AssetImage(itemPics[i]))),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
