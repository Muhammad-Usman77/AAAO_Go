import 'package:flutter/material.dart';

class Stackwidget extends StatelessWidget {
  Stackwidget({super.key});
  final List<Color> itemColors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
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
                      30.0, // Adjust this value to control the overlap amount
                  child: Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: itemColors[i],
                      // borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Item ${i + 1}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
