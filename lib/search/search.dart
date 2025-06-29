import 'package:aaao_go/driver/pages/driverpage.dart';
import 'package:aaao_go/driver/widgets/buttonwidgets.dart';
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
          ],
        ),
      ),
    );
  }
}
