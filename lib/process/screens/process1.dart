import 'package:aaao_go/process/screens/process2.dart';
import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class Process1Screen extends StatefulWidget {
  const Process1Screen({super.key});

  @override
  State<Process1Screen> createState() => _Process1ScreenState();
}

class _Process1ScreenState extends State<Process1Screen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Process2Scren()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appclr2,
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: Image.asset('assets/spcar1.png')),
          ],
        ),
      ),
    );
  }
}
