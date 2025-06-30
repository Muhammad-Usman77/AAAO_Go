import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class BackBtnPInfo extends StatelessWidget {
  String text1;
   BackBtnPInfo({super.key, required this.text1});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.arrow_back_ios,
          color: AppColor.white,
        ),
        Text(
          text1,
          style: TextStyle(fontSize: 20, color: AppColor.white),
        ),
        SizedBox(),
      ],
    );
  }
}
