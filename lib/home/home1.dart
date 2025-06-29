import 'package:aaao_go/home/findride.dart';
import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class Home1Screen extends StatefulWidget {
  const Home1Screen({super.key});

  @override
  State<Home1Screen> createState() => _Home1ScreenState();
}

class _Home1ScreenState extends State<Home1Screen> {
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
            Text(
              'Select your Ride:',
              style: TextStyle(color: AppColor.white),
            ),
            SizedBox(
              height: heightScreen * 0.02,
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              color: AppColor.btnback,
                              borderRadius: BorderRadius.circular(20)),
                          child: Image(
                            image: AssetImage(images[index]),
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
                  color: AppColor.btnback),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Fare',
                    style: TextStyle(color: AppColor.white),
                  ),
                  Row(
                    children: [
                      IconButton(
                          style: ButtonStyle(),
                          onPressed: () {},
                          icon: Icon(
                            Icons.minimize,
                            color: Colors.white,
                          )),
                      Container(
                        height: 20,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            'Rs.200',
                            style: TextStyle(color: AppColor.white),
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            color: Colors.white,
                          ))
                    ],
                  )
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
                      color: AppColor.btnback),
                  child: Icon(
                    Icons.rectangle_outlined,
                    color: AppColor.white,
                  ),
                ),
                SizedBox(
                  height: heightScreen * 0.02,
                ),
                Container(
                  height: 30,
                  width: 120,
                  decoration: BoxDecoration(
                      color: AppColor.btnback,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> FindRidePage()));
                        },
                        child: Text(
                          'Find Ride',
                          style: TextStyle(color: AppColor.white),
                        ),
                      ),
                      Icon(
                        Icons.watch_later_outlined,
                        color: AppColor.white,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColor.btnback),
                  child: Icon(
                    Icons.tune_outlined,
                    color: AppColor.white,
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
