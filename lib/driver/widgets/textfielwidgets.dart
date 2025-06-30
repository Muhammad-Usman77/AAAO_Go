import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class DriverTextForm extends StatelessWidget {
 final  String text2;
  final IconData? icons;
  const DriverTextForm({super.key, required this.text2, this.icons});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          filled: true,
          fillColor: AppColor.btnback,
          hintText: text2,
          hintStyle: TextStyle(color: AppColor.white),
          suffix: Icon(
            icons,
            color: Colors.white,
          ),
          //suffixIconColor: AppColor.white,

          border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.white),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ))),
    );
  }
}
