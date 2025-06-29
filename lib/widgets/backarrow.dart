import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class Backarrowwidget extends StatelessWidget {
  const Backarrowwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.arrow_back_ios, color: AppColor.white,),
        Text(
          'Profile', 
          style: TextStyle(
            fontSize: 20,
            color: AppColor.white
          ),
        ),
        SizedBox(),
      ],
    );
  }
}
