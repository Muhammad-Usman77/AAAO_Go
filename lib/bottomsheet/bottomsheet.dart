import 'package:aaao_go/home/home1.dart';
import 'package:aaao_go/messages/message.dart';
import 'package:aaao_go/notifications/notifications.dart';
import 'package:aaao_go/profile/profile.dart';
import 'package:aaao_go/search/search.dart';
import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class BottomsheetPage extends StatefulWidget {
  const BottomsheetPage({super.key});

  @override
  State<BottomsheetPage> createState() => _BottomsheetPageState();
}

class _BottomsheetPageState extends State<BottomsheetPage> {
  @override
  int currenIndex = 0;
  List<Widget> pages = [
    const Home1Screen(),
    const Searchpage(),
    const Notificationspage(),
    const Message(),
    const Profilepage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      body: pages[currenIndex],
      bottomNavigationBar: Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppColor.btnback, borderRadius: BorderRadius.circular(30)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  currenIndex = 0;
                });
              },
              child: Icon(
                Icons.home,
                color: currenIndex == 0 ? Colors.white : Colors.grey,
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currenIndex = 1;
                });
              },
              child: Icon(
                Icons.search,
                color: currenIndex == 1 ? Colors.white : Colors.grey,
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currenIndex = 2;
                });
              },
              child: Icon(
                Icons.notifications,
                color: currenIndex == 2 ? Colors.white : Colors.grey,
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currenIndex = 3;
                });
              },
              child: Icon(
                Icons.message,
                color: currenIndex == 3 ? Colors.white : Colors.grey,
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currenIndex = 4;
                });
              },
              child: Icon(
                Icons.man,
                color: currenIndex == 4 ? Colors.white : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
