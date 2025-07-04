import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class Rowidgets extends StatelessWidget {
 final String text1;
 final  String text2;
 final  IconData icons;
 const  Rowidgets(
      {super.key,
      required this.text1,
      required this.text2,
      required this.icons});

  @override
  Widget build(BuildContext context) {
    var heightScreen = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text1,
          style: TextStyle(color: AppColor.white),
        ),
        SizedBox(
          height: heightScreen * 0.02,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text2,
              style: TextStyle(color: AppColor.white),
            ),
            Icon(
              icons,
              color: AppColor.white,
            ),
          ],
        ),
        SizedBox(
          height: heightScreen * 0.02,
        ),
        Container(
          height: 1,
          width: double.infinity,
          decoration: BoxDecoration(color: AppColor.btnback),
        )
      ],
    );
  }
}
