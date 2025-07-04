import 'package:aaao_go/home/home.dart';
import 'package:aaao_go/profile/profile2.dart';
import 'package:aaao_go/screentwo/chatdetails.dart';
import 'package:aaao_go/screentwo/notificationscreen.dart';
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
    const HomePage(),
    const Searchpage(),
    const NotificationScreen(),
    const ChatDetailsScreen(),
    const Profile2Screen(),
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
            color: AppColor.appclr2, borderRadius: BorderRadius.circular(30)),
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
                color: currenIndex == 0 ? AppColor.appclr : AppColor.appclr,
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
                color: currenIndex == 1 ? AppColor.appclr : AppColor.appclr,
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
                color: currenIndex == 2 ? AppColor.appclr : AppColor.appclr,
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
                color: currenIndex == 3 ? AppColor.appclr : AppColor.appclr,
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
                color: currenIndex == 4 ? AppColor.appclr : AppColor.appclr,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
