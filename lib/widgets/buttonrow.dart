import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class Textbottonrow extends StatelessWidget {
 final  String image;
 const   Textbottonrow({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 100,
      decoration: BoxDecoration(
        color: AppColor.btnback,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(child: Image.asset(image)),
    );
  }
}
