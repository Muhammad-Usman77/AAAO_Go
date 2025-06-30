import 'package:aaao_go/driver/widgets/containerwidget.dart';
import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class TipScreen extends StatefulWidget {
  const TipScreen({super.key});

  @override
  State<TipScreen> createState() => _TipScreenState();
}

class _TipScreenState extends State<TipScreen> {
  

  @override
  Widget build(BuildContext context) {
    var heightScreen = MediaQuery.of(context).size.height;
    var widgtScreen = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          title: Text('TipScreen'),
        ),
        body: Stack(
          children: [
            Image.asset(
              'assets/Basemap image.png',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Align(
              alignment: Alignment.center,
              child: Card(
                color: AppColor.cardfill,
                child: SizedBox(
                  height: heightScreen * 0.6,
                  width: widgtScreen * 0.8,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                          top: -50,
                          left: 90,
                          child: Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: Image(
                              image: AssetImage(
                                'assets/ellipse.png',
                              ),
                            ),
                          )),
                          //this widgete for pin
                
                      // this widget for rating
                      Positioned(
                          left: 180,
                          child: Container(
                            height: 25,
                            width: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColor.black),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Text(
                                  '4.8',
                                  style: TextStyle(color: AppColor.white),
                                )
                              ],
                            ),
                          )),
                      //this widget for terms and condition
                      Positioned(
                          left: 150,
                          top: 50,
                          child: Icon(
                            Icons.privacy_tip,
                            color: AppColor.white,
                          )),
                      // this widget for name
                      Positioned(
                          top: 80,
                          left: 100,
                          child: Column(
                            children: [
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: 'Julie Smith\n',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20)),
                                TextSpan(
                                    text: '            DUB:0001\n',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10)),
                              ]))
                            ],
                          )),
                      SizedBox(
                        height: 50,
                      ),
                      //this widget for column for text information
                      Positioned(
                        top: 130,
                        left: 35,
                        child: Column(
                          spacing: 20,
                          children: [
                            Text(
                              "You're on your destination",
                              style: TextStyle(
                                  color: AppColor.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                                'Would You Like to Give Tip To\n           The Driver',
                                style: TextStyle(
                                  color: AppColor.white,
                                )),
                            Text(
                              'May be late',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  decorationColor: AppColor.white,
                                  color: AppColor.white),
                            ),
                            Row(
                              spacing: 20,
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: AppColor.btnback,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Text(
                                      '1\$',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: AppColor.btnback,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Text(
                                      '2\$',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: AppColor.btnback,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Text(
                                      '3\$',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Customized Amount',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  decorationColor: AppColor.white,
                                  color: AppColor.white),
                            ),
                            ContainerButtonWidget(text2: 'Confirm')
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            // Positioned(
            //     top: 10,
            //     left: 10,
            //     child: Container(
            //       decoration: BoxDecoration(
            //         shape: BoxShape.circle,
            //         color: Colors.amber,
            //       ),
            //     ))
          ],
        ));
  }
}
