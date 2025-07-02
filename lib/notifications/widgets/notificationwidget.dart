import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  String? text1;
  IconData? icons1;
  IconData? icons2;
  String? text2;
  IconData? icons3;
  NotificationWidget(
      {super.key,
      this.text1,
      this.icons1,
      this.icons2,
      this.text2,
      this.icons3});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColor.appclr2,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                icons1,
                color: AppColor.appclr,
              ),
              Text(
                '$text1',
                style: TextStyle(color: AppColor.appclr),
              ),
              Icon(
                icons2,
                color: AppColor.appclr,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              Text(
                'asdfasf adsfa sdfads asdf asdf dasadfasdf\n asdfasf asdfasfd asdfasdf ',
                style: TextStyle(color: AppColor.appclr),
              ),
            ],
          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              Icon(
                icons3,
                color: AppColor.appclr,
              ),
              Text(
                'Just Now',
                style: TextStyle(color: AppColor.appclr),
              )
            ],
          )
        ],
      ),
    );
  }
}
