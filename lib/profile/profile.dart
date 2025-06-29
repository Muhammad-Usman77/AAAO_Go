import 'package:aaao_go/home/homewidgets/rowidgets.dart';
import 'package:aaao_go/utils/clr.dart';
import 'package:aaao_go/widgets/backarrow.dart';
import 'package:flutter/material.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    var heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Backarrowwidget(),
                SizedBox(
                  height: heightScreen * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    Icon(
                      Icons.edit_square,
                      color: AppColor.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(color: AppColor.black),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/ellipse.png'))),
                    )),
                SizedBox(
                  height: heightScreen * 0.02,
                ),
                Rowidgets(
                    text1: 'Name',
                    text2: 'margin huil',
                    icons: Icons.arrow_forward_ios),
                SizedBox(
                  height: heightScreen * 0.02,
                ),
                Rowidgets(
                    text1: 'Email',
                    text2: 'margin786@gmail.com',
                    icons: Icons.arrow_forward_ios),
                SizedBox(
                  height: heightScreen * 0.02,
                ),
                Rowidgets(
                    text1: 'Phone Number',
                    text2: '+920000000000000000',
                    icons: Icons.arrow_forward_ios),
                SizedBox(
                  height: heightScreen * 0.02,
                ),
                Rowidgets(
                    text1: 'Location',
                    text2: 'margin huil',
                    icons: Icons.arrow_forward_ios),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
