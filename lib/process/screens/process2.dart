import 'package:aaao_go/process/screens/process3.dart';
import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class Process2Scren extends StatefulWidget {
  const Process2Scren({super.key});

  @override
  State<Process2Scren> createState() => _Process2ScrenState();
}

class _Process2ScrenState extends State<Process2Scren> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Process3Screen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appclr2,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //  Image.asset('assets/wel.png'),
              Text(
                'WEL',
                style: TextStyle(
                    color: AppColor.appclr, fontSize: 40, letterSpacing: 10),
              ),
              Image.asset('assets/spcar1.png'),
            ],
          )
        ],
      ),
    );
  }
}
