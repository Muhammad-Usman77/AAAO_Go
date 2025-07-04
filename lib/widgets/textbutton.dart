import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class Textbuttonwidget extends StatelessWidget {
 final String name;
 const Textbuttonwidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 200,
      decoration: BoxDecoration(
        color: AppColor.btnback,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          name,
          style: TextStyle(color: AppColor.white),
        ),
      ),
    );
  }
}
