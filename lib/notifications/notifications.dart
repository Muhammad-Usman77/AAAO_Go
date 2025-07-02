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
              BackBtnPInfo(
                icons: Icons.arrow_back_ios_new,
                text1: 'Notifications',
                text2: 'ClearAll',
              ),
              NotificationWidget(
                icons1: Icons.notifications_none_outlined,
                text1: 'Zoe send You a Message',
                icons2: Icons.delete_outline_outlined,
                icons3: Icons.watch_later_outlined,
              )
            ],
          )),
    );
  }
}
