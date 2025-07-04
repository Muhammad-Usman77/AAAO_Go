import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class DriverTextForm extends StatelessWidget {
  final String text2;
  final IconData? icons;
  const DriverTextForm({super.key, required this.text2, this.icons});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColor.appclr2,
        hintText: text2,
        hintStyle: TextStyle(color: AppColor.appclr),
        suffix: Icon(
          icons,
          color: AppColor.appclr,
        ),
        //suffixIconColor: AppColor.white,

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
