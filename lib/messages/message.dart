import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  final List<Color> itemColors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    var heightScreen = MediaQuery.of(context).size.height;
    var widgtScreen = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          title: Text('Message'),
        ),
        body: Stack(
          children: [
            Image.asset(
              'assets/Basemap image.png',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Align(
              alignment: Alignment.center,
              child: Card(
                color: Colors.black,
                child: SizedBox(
                  height: heightScreen * 0.6,
                  width: widgtScreen * 0.8,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                          top: -10,
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Colors.amber, shape: BoxShape.circle),
                          )),
                      Positioned(
                          top: 20,
                          left: 20,
                          child: Column(
                            children: [
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: 'usman\n',
                                    style: TextStyle(color: Colors.white)),
                                TextSpan(
                                    text: 'noman\n',
                                    style: TextStyle(color: Colors.white)),
                                WidgetSpan(
                                    child: InkWell(
                                  onTap: () {},
                                  child: Text(
                                    'Ami Jan',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ))
                              ]))
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ),
            // Positioned(
            //     top: 10,
            //     left: 10,
            //     child: Container(
            //       decoration: BoxDecoration(
            //         shape: BoxShape.circle,
            //         color: Colors.amber,
            //       ),
            //     ))
          ],
        ));
  }
}
