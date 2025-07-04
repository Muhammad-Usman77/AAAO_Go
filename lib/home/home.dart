import 'package:aaao_go/home/home1.dart';
import 'package:aaao_go/home/luxury.dart';
import 'package:aaao_go/home/minicar.dart';
import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                            }if (selectedIndex == 0) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MiniCarPage()));
                            }if (selectedIndex == 0) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LuxuryCarPage()));
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
          ],
        ),
      ),
    );
  }
}
