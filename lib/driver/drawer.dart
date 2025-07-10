import 'package:aaao_go/driver/pages/driverpage.dart';
import 'package:aaao_go/utils/clr.dart';

import 'package:flutter/material.dart';

class DrawerWidgetScreen extends StatefulWidget {
  const DrawerWidgetScreen({super.key});

  @override
  State<DrawerWidgetScreen> createState() => _DrawerWidgetScreenState();
}

class _DrawerWidgetScreenState extends State<DrawerWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    final widthScreen= MediaQuery.of(context).size.width;
    final heightScreen =MediaQuery.of(context).size.height;
    return Drawer(
        backgroundColor: AppColor.appclr2,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: AppColor.appclr2,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                        'assets/ellipse.png'), // Replace with your image
                  ),
                  SizedBox(height: 10),
                  Text(
                    'John Doe',
                    style: TextStyle(
                      color: AppColor.appclr,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'john.doe@example.com',
                    style: TextStyle(
                      color: AppColor.appclr,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.home_outlined,
                        color: AppColor.appclr,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                          color: AppColor.appclr,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: heightScreen * 0.02,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.notification_add_outlined,
                        color: AppColor.appclr,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Notifications',
                        style: TextStyle(
                          color: AppColor.appclr,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: heightScreen * 0.02,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.settings_outlined,
                        color: AppColor.appclr,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Settings',
                        style: TextStyle(
                          color: AppColor.appclr,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: heightScreen * 0.02,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.privacy_tip_outlined,
                        color: AppColor.appclr,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Terms & Conditions',
                        style: TextStyle(
                          color: AppColor.appclr,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: heightScreen * 0.16,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Driverpage(),));
                    },
                    child: Container(
                      height: heightScreen * 0.07,
                      width: widthScreen * 0.6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColor.appclr),
                      child: Center(
                        child: Text(
                          'Driver MOOD',
                          style: TextStyle(color: AppColor.btnback2),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: heightScreen * 0.04,
                  ),
                  Container(
                    height: heightScreen * 0.07,
                    width: widthScreen * 0.6,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColor.btnback2),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'LOGOUT',
                          style: TextStyle(color: AppColor.appclr),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
   
   
  }
}