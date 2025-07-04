import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class ContainerButtonWidget extends StatelessWidget {
 final  String text2;
 const  ContainerButtonWidget({super.key, required this.text2});

  @override
  Widget build(BuildContext context) {
    var heightScreen = MediaQuery.of(context).size.height;
    var widthScreen = MediaQuery.of(context).size.height;
    return Container(
      height: heightScreen * 0.07,
      width: widthScreen * 0.3,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: AppColor.appclr),
      child: Center(
        child: Text(
          text2,
          style: TextStyle(color: AppColor.appclr2),
        ),
      ),
    );
  }
}
