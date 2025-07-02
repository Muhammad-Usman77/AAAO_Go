import 'package:aaao_go/authencation/forget/widgets/emailwidget.dart';
import 'package:aaao_go/driver/widgets/containerwidget.dart';
import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    var heightScreen = MediaQuery.of(context).size.height;
   // var widthScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColor.appclr2,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios_new,
                      color: AppColor.appclr,
                    ),
                  ],
                ),
                Align(
                    alignment: Alignment.center,
                    child: Image.asset('assets/clrlogo.png')),
                Text(
                  'Create New Password',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: AppColor.appclr),
                ),
                SizedBox(
                  height: heightScreen * 0.03,
                ),
                Text(
                  'Almost there! Create a new password for your\n loyalty account to keep it secure. Remembe\n to choose a strong and unique password',
                  style: TextStyle(color: AppColor.appclr),
                ),
                SizedBox(
                  height: heightScreen * 0.04,
                ),
                EmailWidgets(
                  icons1: Icons.email_outlined,
                  text1: 'Enter Password',
                  icons2: Icons.remove_red_eye_outlined,
                ),
                SizedBox(
                  height: heightScreen * 0.02,
                ),
                EmailWidgets(
                  icons1: Icons.email_outlined,
                  text1: 'Confirm Password',
                  icons2: Icons.remove_red_eye_outlined,
                ),
                SizedBox(
                  height: heightScreen * 0.03,
                ),
                InkWell(
                    onTap: () {
                     
                    },
                    child: ContainerButtonWidget(text2: 'PROCEED')),
                SizedBox(
                  height: heightScreen * 0.01,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
