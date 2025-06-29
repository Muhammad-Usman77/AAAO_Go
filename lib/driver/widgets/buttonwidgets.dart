import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  String text1;
  ButtonWidget({super.key, required this.text1});

  @override
  Widget build(BuildContext context) {
    var heightScreen = MediaQuery.of(context).size.height;
    var widthScreen = MediaQuery.of(context).size.height;

    return Container(
      height: heightScreen * 0.08,
      width: widthScreen * 0.2,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text('Passenget Mood'),
    );
  }
}
