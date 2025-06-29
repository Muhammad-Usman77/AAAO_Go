import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class Textfielswidget extends StatelessWidget {
  String text1;
  
  TextEditingController? wController;
  Textfielswidget({super.key,  this.wController, required this.text1});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: wController,
      decoration: InputDecoration(
        prefixIconColor: AppColor.black,
        prefix: Icon(Icons.home),
        hintText: text1,
      ),
    );
  }
}
