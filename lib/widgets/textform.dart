import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class Textformwidget extends StatelessWidget {
 final  String hint;
 final  Color backColor;
 final  IconData? icons;
 final  TextEditingController? wcontroller;
 const  Textformwidget(
      {super.key,
      required this.hint,
      this.wcontroller,
      required this.backColor,
      this.icons});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: wcontroller,
      decoration: InputDecoration(
          filled: true,
          //  enabled: true,
          //  focusedBorder: InputBorder.none,
          fillColor: backColor,
          //  iconColor: AppColor.white
          suffixIconColor: AppColor.white,
          hintStyle: TextStyle(color: AppColor.white),
          hintText: hint,
          suffixIcon: Icon(icons),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.white),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              )),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.white),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ))),
    );
  }
}
