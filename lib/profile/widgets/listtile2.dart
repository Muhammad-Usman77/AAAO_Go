import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class ListTile2 extends StatelessWidget {
  IconData icons1;
  String text1;
  IconData? icons2;
  ListTile2(
      {super.key, required this.icons1, required this.text1, this.icons2});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      leading: Icon(
        icons1,
        color: AppColor.white,
      ),
      title: Text(
        text1,
        style: TextStyle(color: AppColor.white),
      ),
      trailing: Icon(icons2, color: AppColor.white),
    );
  }
}
