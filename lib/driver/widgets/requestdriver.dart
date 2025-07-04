import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class DriverRequestWidget extends StatelessWidget {
 final  bool isAccepted;
 final  Image image;
 const  DriverRequestWidget(
      {super.key, required this.isAccepted, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: AppColor.appclr, shape: BoxShape.circle),
                  child: Image.asset('$image'),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Zoe'),
                Container(
                  height: 30,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.star_border),
                      SizedBox(
                        width: 5,
                      ),
                      Text('4.9'),
                    ],
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(Icons.watch_later_outlined),
                    Text('4min'),
                  ],
                )
              ],
            ),
            Spacer(),
            Row(
              children: [
                Row(
                  children: [
                    Spacer(),
                    Icon(Icons.social_distance_outlined),
                    Text('4min'),
                  ],
                )
              ],
            ),
            Row(
              children: [
                SizedBox(),
                Text('Toyota Altis 1.6'),
                Text('DUB:0001')
              ],
            ),
            Row(
              children: [
                Container(
                  height: 30,
                  width: 60,
                  decoration: BoxDecoration(
                    color: AppColor.appclr2,
                  ),
                  child: Center(
                    child: Text('Decline'),
                  ),
                ),
                Switch(
                  value: isAccepted,
                  onChanged: (value) {
                    value = !isAccepted;
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
