import 'package:aaao_go/bottomsheet/bottomsheet.dart';
import 'package:aaao_go/drawer/drawerwidget.dart';
import 'package:aaao_go/driver/pages/personalinfo.dart';
import 'package:aaao_go/driver/widgets/containerwidget.dart';
import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class Driverpage extends StatefulWidget {
  const Driverpage({super.key});

  @override
  State<Driverpage> createState() => _DriverpageState();
}

class _DriverpageState extends State<Driverpage> {
  @override
  Widget build(BuildContext context) {
    var heightScreen = MediaQuery.of(context).size.height;
    var widthScreen = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.appclr2,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu, color: AppColor.appclr),
          ),
        ),
      ),
      backgroundColor: AppColor.appclr2,
      drawer: DrawerWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
              alignment: Alignment.center,
              child: Image.asset('assets/logo.png')),
          Text.rich(
            style: TextStyle(color: AppColor.appclr),
            TextSpan(
              text: 'Lorem Ipsum is simply dummy text\n ', // Default text
              children: <TextSpan>[
                TextSpan(
                  text: 'of the printing and type setting\n',
                  style: TextStyle(color: AppColor.appclr),
                ),
                TextSpan(
                  text: 'idustry lorem ipsum',
                  style: TextStyle(
                      fontStyle: FontStyle.italic, color: AppColor.appclr),
                ),
              ],
            ),
          ),
          SizedBox(
            height: heightScreen * 0.04,
          ),
          InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PersonalInfoPage()));
            },
            child: Container(
              height: heightScreen * 0.06,
              width: widthScreen * 0.4,
              decoration: BoxDecoration(
                  color: AppColor.btnback2,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.person_2_outlined,
                    color: AppColor.appclr,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Driver',
                    style: TextStyle(
                      color: AppColor.appclr,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: heightScreen * 0.02,
          ),
          ContainerButtonWidget(text2: 'Already have an account'),
          SizedBox(
            height: heightScreen * 0.02,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BottomsheetPage()));
            },
            child: Text(
              'Back To Passernger Mood',
              style: TextStyle(
                  color: AppColor.appclr,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColor.appclr),
            ),
          ),
        ],
      ),
    );
  }
}
