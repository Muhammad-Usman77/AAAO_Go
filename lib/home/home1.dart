import 'package:aaao_go/driver/dialog/dialogbox.dart';
import 'package:aaao_go/driver/drawer.dart';
import 'package:aaao_go/home/findride.dart';
import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home1Screen extends StatefulWidget {
  const Home1Screen({super.key});

  @override
  State<Home1Screen> createState() => _Home1ScreenState();
}

class _Home1ScreenState extends State<Home1Screen> {
  List<String> images = [
    'assets/byke.png',
    'assets/scoty.png',
    'assets/car2.png',
    'assets/car2.png',
  ];
  List<String> carNames = ['Byke', 'Scoty', 'Ac Car', 'Special'];
  List<String> farePrices = [
    'Rs.200',
    'Rs.300',
    'Rs.500',
    'Rs.700'
  ]; // Different prices for each vehicle

  int selectedIndex = 0;

  // Widget for the bottom fare section that changes based on index
  Widget _buildFareSection(double heightScreen) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      width: double.infinity,
      height: heightScreen * 0.07,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColor.btnback2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Fare',
            style: TextStyle(
              color: AppColor.appclr,
              fontFamily: 'SF-Pro-Display',
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: AppColor.btnback2,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 5.0,
                      blurStyle: BlurStyle.normal,
                    ),
                  ],
                ),
                child: Center(
                  child: FaIcon(
                    FontAwesomeIcons.minus,
                    color: AppColor.appclr,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                height: 30,
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColor.appclr,
                  border: Border.all(
                    width: 4,
                    color: AppColors.radiusBtn,
                  ),
                ),
                child: Center(
                  child: Text(
                    farePrices[
                        selectedIndex], // Dynamic price based on selection
                    style: TextStyle(color: AppColor.appclr2),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: AppColor.btnback2,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 5.0,
                      blurStyle: BlurStyle.normal,
                    ),
                  ],
                ),
                child: Center(
                  child: FaIcon(
                    FontAwesomeIcons.add,
                    color: AppColor.appclr,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Widget for the action buttons that changes based on index
  Widget _buildActionButtons(double heightScreen) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColor.btnback2,
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {
              showPaymentMethodDialog(context);
            },
            child: Icon(Icons.money, color: AppColor.appclr),
          ),
        ),
        SizedBox(height: heightScreen * 0.02),
        Container(
          padding: EdgeInsets.all(5),
          height: 35,
          width: 140,
          decoration: BoxDecoration(
            color: AppColor.appclr,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 5, color: AppColors.radiusBtn),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FindRidePage(),
                      ),
                    );
                  },
                  child: Text(
                    'Find ${carNames[selectedIndex]}', // Dynamic text based on selection
                    style: TextStyle(color: AppColor.btnback2),
                  ),
                ),
                Icon(
                  Icons.watch_later_outlined,
                  color: AppColors.boxBack,
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColor.btnback2,
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {
              showPaymentMethodDialog(context);
            },
            child: Icon(Icons.tune_outlined, color: AppColor.appclr),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var heightScreen = MediaQuery.of(context).size.height;

    return Scaffold(
      drawer: DrawerWidgetScreen(),
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
                  prefixIcon: Icon(Icons.home, color: AppColor.appclr),
                  hintText: 'From',
                  hintStyle: TextStyle(color: AppColor.appclr),
                  enabled: false,
                  focusedBorder: InputBorder.none,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.flag, color: AppColor.appclr),
                        hintText: 'To',
                        hintStyle: TextStyle(color: AppColor.appclr),
                        enabled: false,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.add, color: AppColor.appclr),
                ],
              ),
              SizedBox(height: heightScreen * 0.02),
              Stack(
                children: [
                  Container(
                    height: heightScreen * 0.4,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage('assets/basemap.png'),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 35,
                    child: Builder(
                      builder: (context) => IconButton(
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                        icon: Icon(Icons.menu),
                        style: IconButton.styleFrom(
                          backgroundColor: AppColors.greyblack,
                          foregroundColor: AppColors.yellow2,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                'Select your Ride:',
                style: TextStyle(color: AppColor.appclr),
              ),
              SizedBox(height: heightScreen * 0.02),
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
                            ),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image(image: AssetImage(images[index])),
                                Text(
                                  carNames[index],
                                  style: TextStyle(
                                    color: AppColor.appclr,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              SizedBox(height: heightScreen * 0.02),
              // Dynamic fare section based on selected index
              _buildFareSection(heightScreen),

              SizedBox(height: 20),
              // Dynamic action buttons based on selected index
              _buildActionButtons(heightScreen),
            ],
          ),
        ),
      ),
    );
  }
}
