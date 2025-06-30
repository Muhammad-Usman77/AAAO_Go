import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class DocUploadWidget extends StatelessWidget {
  final String text2;
  //final  IconData? icons;
  const DocUploadWidget({super.key, required this.text2});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColor.btnback,
        hintText: text2,
        hintStyle: TextStyle(color: AppColor.white),
        suffixIcon: TextButton(
            style: ButtonStyle(
                side:
                    WidgetStateProperty.all(BorderSide(color: Colors.white))),
            onPressed: () {},
            child: Text(
              'Upload',
              style: TextStyle(color: Colors.white),
            )),
        // suffix: Icon(
        //   icons,
        //   color: Colors.white,
        // ),
        //suffixIconColor: AppColor.white,

        border: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.white),
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            )),
      ),
    );
  }
}
