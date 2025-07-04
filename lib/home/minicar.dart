import 'package:aaao_go/home/findride.dart';
import 'package:aaao_go/home/home1.dart';
import 'package:aaao_go/home/luxury.dart';
import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class MiniCarPage extends StatefulWidget {
  const MiniCarPage({super.key});

  @override
  State<MiniCarPage> createState() => _MiniCarPageState();
}

class _MiniCarPageState extends State<MiniCarPage> {
  List<String> images = [
    'assets/byke.png',
    'assets/car2.png',
    'assets/car2.png',
    'assets/car3.png',
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    var heightScreen = MediaQuery.of(context).size.height;
    // var widthScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColor.appclr2,
      body: Padding(
        padding: const EdgeInsets.all(20),
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
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage('assets/location pic.png')))),
            Text(
              'Select your Ride:',
              style: TextStyle(
                color: AppColor.appclr,
              ),
            ),
            SizedBox(
              height: heightScreen * 0.02,
            ),
            SizedBox(
              height: 100,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                            if (selectedIndex == 0) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Home1Screen()));
                              setState(() {
                                setState(() {
                                  selectedIndex = index;
                                });
                              });
                            }
                            if (selectedIndex == 1) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MiniCarPage()));
                                      setState(() {
                                setState(() {
                                  selectedIndex = index;
                                });
                              });
                            }
                            if (selectedIndex == 2) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LuxuryCarPage()));
                                      setState(() {
                                setState(() {
                                  selectedIndex = index;
                                });
                              });
                            }
                          },
                          child: Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                                color: AppColor.btnback2,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: selectedIndex == index
                                      ? AppColor.appclr
                                      : AppColor.appclr2,
                                )),
                            child: Image(
                              image: AssetImage(images[index]),
                            ),
                          ),
                        ));
                  }),
            ),

            SizedBox(
              height: heightScreen * 0.02,
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              width: double.infinity,
              height: heightScreen * 0.07,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColor.btnback2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Fare',
                    style: TextStyle(color: AppColor.appclr),
                  ),
                  Row(
                    children: [
                      IconButton(
                          style: ButtonStyle(),
                          onPressed: () {},
                          icon: Icon(
                            Icons.minimize,
                            color: AppColor.appclr,
                          )),
                      Container(
                        height: 20,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            'Rs.300',
                            style: TextStyle(color: AppColor.appclr),
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            color: AppColor.appclr,
                          ))
                    ],
                  ),
                ],
              ),
            ),
            // for rectangular and tune
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColor.btnback2),
                  child: InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.rectangle_outlined,
                      color: AppColor.appclr,
                    ),
                  ),
                ),
                SizedBox(
                  height: heightScreen * 0.02,
                ),
                Container(
                  height: 30,
                  width: 120,
                  decoration: BoxDecoration(
                      color: AppColor.appclr,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FindRidePage()));
                        },
                        child: Text(
                          'Find Ride',
                          style: TextStyle(color: AppColor.btnback2),
                        ),
                      ),
                      Icon(
                        Icons.watch_later_outlined,
                        color: AppColor.boxBack,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColor.btnback2),
                  child: InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.tune_outlined,
                      color: AppColor.appclr,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
