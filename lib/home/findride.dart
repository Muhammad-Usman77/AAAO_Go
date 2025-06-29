import 'package:aaao_go/home/homewidgets/stackwidget.dart';
import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class FindRidePage extends StatefulWidget {
  const FindRidePage({super.key});

  @override
  State<FindRidePage> createState() => _FindRidePageState();
}

class _FindRidePageState extends State<FindRidePage> {
  List<String> images = [
    'assets/byke.png',
    'assets/car2.png',
    'assets/car2.png',
    'assets/car3.png',
  ];
  @override
  Widget build(BuildContext context) {
    var heightScreen = MediaQuery.of(context).size.height;
    var widthScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColor.black,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIconColor: AppColor.black,
                prefix: Icon(
                  Icons.home,
                ),
                hintText: 'From',
                hintStyle: TextStyle(color: AppColor.white),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                prefixIconColor: AppColor.black,
                prefix: Icon(Icons.flag),
                hintText: 'To',
                hintStyle: TextStyle(color: AppColor.white),
              ),
            ),
            SizedBox(
              height: heightScreen * 0.02,
            ),
            Container(
                height: heightScreen * 0.4,
                width: double.infinity,
                decoration: BoxDecoration(
                    // color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage('assets/location pic.png')))),
            SizedBox(
              height: heightScreen * 0.01,
            ),
           SizedBox(
            height: 60,
      width: double.infinity, // Takes full width
      child: Stackwidget(), // Now it will display properly
    ),
         
          
          ],
        ),
      ),
    );
  }
}
