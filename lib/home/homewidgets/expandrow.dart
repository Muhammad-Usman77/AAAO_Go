import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class ExpandrowWidget extends StatelessWidget {
 final String text1;
 final TextEditingController? wController;
 final IconData icons;
 const ExpandrowWidget(
      {super.key, this.wController, required this.icons, required this.text1});

  @override
  Widget build(BuildContext context) {
    var weidgtScreen = MediaQuery.of(context).size.width;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextFormField(
          controller: wController,
          decoration: InputDecoration(
            prefix: Icon(
              icons,
              color: AppColor.white,
            ),
            hintText: text1,
          ),
        ),
        SizedBox(
          width: weidgtScreen * 0.02,
        ),
        IconButton(onPressed: () {}, icon: Icon(icons)),
      ],
    );
  }
}
