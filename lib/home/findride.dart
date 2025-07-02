import 'package:aaao_go/driver/pages/driverrequest.dart';
import 'package:aaao_go/home/homewidgets/smallcontainer.dart';
import 'package:aaao_go/home/homewidgets/stackwidget.dart';
import 'package:aaao_go/utils/clr.dart';
import 'package:dotted_line/dotted_line.dart';
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
   // var widthScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColor.appclr2,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                    prefixIconColor: AppColor.black,
                    prefixIcon: Icon(
                      Icons.home,
                      color: AppColor.appclr,
                    ),
                    hintText: 'From',
                    hintStyle: TextStyle(color: AppColor.appclr),
                    enabled: false,
                    focusedBorder: InputBorder.none),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.flag,
                            color: AppColor.appclr,
                          ),
                          hintText: 'To',
                          hintStyle: TextStyle(color: AppColor.appclr),
                          enabled: false,
                          focusedBorder: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.add,
                    color: AppColor.appclr,
                  )
                ],
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
              DottedLine(
                dashColor: AppColor.appclr,
                // direction: Axis.horizontal,
                // alignment: WrapAlignment.center,
                // lineLength: double.infinity,
                // lineThickness: 1.0,
                // dashLength: 4.0,
                // dashColor: Colors.black,
                // dashGradient: [Colors.red, Colors.blue],
                // dashRadius: 0.0,
                // dashGapLength: 4.0,
                // dashGapColor: Colors.transparent,
                // dashGapGradient: [Colors.red, Colors.blue],
                // dashGapRadius: 0.0,
              ),
              SizedBox(
                height: 60,
                width: double.infinity, // Takes full width
                child: SmallContainer(), // Now it will display properly
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: AppColor.btnback2,
                        borderRadius: BorderRadius.circular(20)),
                    child: IconButton(
                        style: ButtonStyle(),
                        onPressed: () {},
                        icon: Icon(
                          Icons.minimize,
                          color: AppColor.appclr,
                        )),
                  ),
                  Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColor.appclr),
                    child: Center(
                      child: Text(
                        'Rs.200',
                        style: TextStyle(color: AppColor.appclr2),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: AppColor.btnback2,
                        borderRadius: BorderRadius.circular(20)),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          color: AppColor.appclr,
                        )),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  spacing: 10,
                  children: [
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColor.appclr),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DriverRequest()));
                          },
                          child: Text(
                            'Raise Fare',
                            style: TextStyle(color: AppColor.appclr2),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          boxShadow: [],
                          borderRadius: BorderRadius.circular(20),
                          color: AppColor.appclr2),
                      child: Center(
                        child: Text(
                          'Cancel Ride',
                          style: TextStyle(color: AppColor.appclr),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
