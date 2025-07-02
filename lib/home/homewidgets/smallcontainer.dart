import 'package:flutter/material.dart';

class SmallContainer extends StatelessWidget {
  SmallContainer({super.key});
  final List<Color> itemColors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    // Colors.purple,
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            flex: 1,
            child: Text(
              'Drivers Viewing your Ride:',
              style: TextStyle(color: Colors.white, fontSize: 12),
            )),
        Spacer(),
        Expanded(
            flex: 1,
            child: Row(
              children: [
                for (int i = 0; i < itemColors.length; i++)
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          color: itemColors[i],
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  )
              ],
            )),
      ],
    );
  }
}
