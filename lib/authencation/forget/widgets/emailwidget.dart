import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class EmailWidgets extends StatelessWidget {
 final  IconData icons1;
  final String text1;
final   IconData? icons2;

  const EmailWidgets(
      {super.key, required this.icons1, required this.text1, this.icons2});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          prefixIcon: Icon(
            icons1,
            color: AppColor.appclr,
          ),
          hintText: text1,
          hintStyle: TextStyle(color: AppColor.appclr),
          suffixIcon: Icon(
            icons2,
            color: AppColor.appclr,
          ),
          suffixIconColor: AppColor.appclr,
          
          filled: true,
          fillColor: AppColor.appclr2,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: AppColor.appclr)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: AppColor.appclr)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: AppColor.appclr)),
              ),
    );
  }
}
