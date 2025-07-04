import 'package:aaao_go/authencation/forget/forgetpassword.dart';
import 'package:aaao_go/driver/pages/driverlicense.dart';
import 'package:aaao_go/driver/pages/driverpage.dart';
import 'package:aaao_go/driver/pages/personalinfo.dart';

import 'package:aaao_go/driver/pages/vehicleinformation.dart';
import 'package:aaao_go/driver/widgets/buttonwidgets.dart';
import 'package:aaao_go/profile/profile2.dart';
import 'package:aaao_go/reachdestination/ratingscreen.dart';
import 'package:aaao_go/reachdestination/tipscreen.dart';
import 'package:flutter/material.dart';

class Searchpage extends StatefulWidget {
  const Searchpage({super.key});

  @override
  State<Searchpage> createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: Center(
        child: Column(
          children: [
            ButtonWidget(text1: 'hh'),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Driverpage()));
                },
                child: Text('Move To Driver')),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PersonalInfoPage()));
                },
                child: Text('Move To personal Info')),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Driverlicense()));
                },
                child: Text('Move To Driver License')),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Vehicleinformation()));
                },
                child: Text('Vehicle Information')),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TipScreen()));
                },
                child: Text('Tip Screen')),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RatingScreen()));
                },
                child: Text('Rating Screen')),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Profile2Screen()));
                },
                child: Text('profile2')),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ForgetpasswordScreen()));
                },
                child: Text('Forget Password')),
          ],
        ),
      ),
    );
  }
}
