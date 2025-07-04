import 'package:aaao_go/drawer/drawerwidget.dart';
import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class Process3Screen extends StatefulWidget {
  const Process3Screen({super.key});

  @override
  State<Process3Screen> createState() => _Process3ScreenState();
}

class _Process3ScreenState extends State<Process3Screen> {
  @override
  Widget build(BuildContext context) {
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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'WELCOME',
              style: TextStyle(
                  color: AppColor.appclr, fontSize: 40, letterSpacing: 10),
            ),
          ),
        ],
      ),
    );
  }
}
