import 'package:aaao_go/driver/widgets/backbtn.dart';
import 'package:aaao_go/notifications/widgets/notificationwidget.dart';
import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class Notificationspage extends StatefulWidget {
  const Notificationspage({super.key});

  @override
  State<Notificationspage> createState() => _NotificationspageState();
}

class _NotificationspageState extends State<Notificationspage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColor.appclr2,
          body: Column(
            children: [
             Text('usman', style:TextStyle(color: AppColor.appclr),) 
             
            ],
          )),
    );
  }
}
