import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class BackBtnPInfo extends StatelessWidget {
 final  String text1;
 final  String? text2;
 final  IconData? icons;
 const  BackBtnPInfo({super.key, required this.text1, this.text2, this.icons});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          icons,
          color: AppColor.appclr,
        ),
        Text(
          text1,
          style: TextStyle(fontSize: 20, color: AppColor.appclr),
        ),
        Text(
          '$text2',
          style: TextStyle(fontSize: 20, color: AppColor.appclr),
        ),
      ],
    );
  }
}
