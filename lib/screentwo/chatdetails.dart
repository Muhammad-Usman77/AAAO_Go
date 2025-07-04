
import 'package:aaao_go/commonwidgets/tabwidgets.dart';
import 'package:aaao_go/screentwo/chat2screen.dart';
import 'package:aaao_go/utils/clr.dart';
import 'package:aaao_go/widgets/chatdetails.dart';
import 'package:flutter/material.dart';

class ChatDetailsScreen extends StatefulWidget {
  const ChatDetailsScreen({super.key});

  @override
  State<ChatDetailsScreen> createState() => _ChatDetailsScreenState();
}

class _ChatDetailsScreenState extends State<ChatDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appclr2,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 10,
            right: 10,
            bottom: 10,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: BackBtn1(icons: Icons.arrow_back_ios_new),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen2()));
                },
                child: TabWidgets1(text1: 'Message', text2: 'Explore')),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Card(
                          color: AppColor.btnback2,
                          child: ChatDetailsWidgets(
                            image: 'assets/Rectangle.png',
                            name: 'John lie',
                            subName:
                                'aweawer awrawer aerawerw awerwre aerwer aerw .....',
                            icons: Icons.message_outlined,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
