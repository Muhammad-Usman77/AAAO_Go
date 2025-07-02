import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class BackBtnPInfo extends StatelessWidget {
  String text1;
  String? text2;
  IconData? icons;
  BackBtnPInfo({super.key, required this.text1, this.text2, this.icons});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          icons,
          color: AppColor.white,
        ),
        Text(
          text1,
          style: TextStyle(fontSize: 20, color: AppColor.white),
        ),
        Text(
          '$text2',
          style: TextStyle(fontSize: 20, color: AppColor.white),
        ),
      ],
    );
  }
}
