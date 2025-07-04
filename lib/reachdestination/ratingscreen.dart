import 'package:aaao_go/driver/widgets/containerwidget.dart';
import 'package:aaao_go/home/findride.dart';
import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingScreen extends StatefulWidget {
  const RatingScreen({super.key});

  @override
  State<RatingScreen> createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  @override
  Widget build(BuildContext context) {
    var heightScreen = MediaQuery.of(context).size.height;
    var widgtScreen = MediaQuery.of(context).size.width;

    return Scaffold(
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
                            color: AppColor.appclr2),
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
                        color: AppColor.appclr,
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
                                    color: AppColor.appclr, fontSize: 20)),
                            TextSpan(
                                text: '            DUB:0001\n',
                                style: TextStyle(
                                    color: AppColor.appclr, fontSize: 10)),
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
                          "Give Rating",
                          style: TextStyle(
                              color: AppColor.appclr,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),

                        Text(
                            'Have Was Your Experience Rate\n My Drivign To Improve it',
                            style: TextStyle(
                              color: AppColor.appclr,
                            )),
                        // this is for star rating
                        Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 4.5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColor.btnback),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            )
                          ],
                        ),
                        Text(
                          'May be later',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationColor: AppColor.appclr,
                              color: AppColor.white),
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FindRidePage()));
                            },
                            child: ContainerButtonWidget(text2: 'Confirm')),
                      ],
                    ),
                  ),
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
