import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class Drawerwidget extends StatelessWidget {
  const Drawerwidget({super.key});

  @override
  Widget build(BuildContext context) {
    var heightScreen = MediaQuery.of(context).size.height;
    var widthScreen = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
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
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'john.doe@example.com',
                      style: TextStyle(
                        color: Colors.white,
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
                        Icon(Icons.home_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Home')
                      ],
                    ),
                    SizedBox(
                      height: heightScreen * 0.02,
                    ),
                    Row(
                      children: [
                        Icon(Icons.notification_add_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Notifications')
                      ],
                    ),
                    SizedBox(
                      height: heightScreen * 0.02,
                    ),
                    Row(
                      children: [
                        Icon(Icons.settings_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Settings')
                      ],
                    ),
                    SizedBox(
                      height: heightScreen * 0.02,
                    ),
                    Row(
                      children: [
                        Icon(Icons.privacy_tip_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Terms & Conditions')
                      ],
                    ),
                    SizedBox(
                      height: heightScreen * 0.16,
                    ),
                    Container(
                      height: heightScreen * 0.07,
                      width: widthScreen * 0.6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColor.btnback),
                      child: Center(
                        child: Text(
                          'PASSENGERS MOOD',
                          style: TextStyle(color: AppColor.white),
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
                          color: AppColor.btnback),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'LOGOUT',
                            style: TextStyle(color: AppColor.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
