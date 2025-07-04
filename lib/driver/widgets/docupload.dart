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
        fillColor: AppColor.btnback2,
        hintText: text2,
        hintStyle: TextStyle(color: AppColor.appclr),
        suffixIcon: TextButton(
            // style: ButtonStyle(
            //     side: WidgetStateProperty.all(
            //         BorderSide(color: AppColor.appclr)),),
            onPressed: () {},
            child: Text(
              'Upload',
              style: TextStyle(color: AppColor.appclr),
            )),
        // suffix: Icon(
        //   icons,
        //   color: Colors.white,
        // ),
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
