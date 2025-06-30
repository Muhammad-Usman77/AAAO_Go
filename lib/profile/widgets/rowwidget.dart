import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class RowWidgetProfile extends StatelessWidget {
  IconData icons1;
  String text2;

  String text1;
  RowWidgetProfile(
      {super.key,
      required this.icons1,
      required this.text1,
      required this.text2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            icons1,
            color: AppColor.white,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            text1,
            style: TextStyle(color: AppColor.white),
          ),
          Spacer(),
          Text(
            text2,
            style: TextStyle(color: AppColor.white),
          ),
        ],
      ),
    );
  }
}
