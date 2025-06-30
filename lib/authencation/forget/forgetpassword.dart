import 'package:aaao_go/authencation/forget/enterotp.dart';
import 'package:aaao_go/authencation/forget/widgets/emailwidget.dart';
import 'package:aaao_go/driver/widgets/containerwidget.dart';
import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class ForgetpasswordScreen extends StatefulWidget {
  const ForgetpasswordScreen({super.key});

  @override
  State<ForgetpasswordScreen> createState() => _ForgetpasswordScreenState();
}

class _ForgetpasswordScreenState extends State<ForgetpasswordScreen> {
  @override
  Widget build(BuildContext context) {
    var heightScreen = MediaQuery.of(context).size.height;
    var widthScreen = MediaQuery.of(context).size.width;

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
                  'Forgot Your Password?',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColor.appclr),
                ),
                SizedBox(
                  height: heightScreen * 0.08,
                ),
                Text(
                  'Enter your registered email to reset your\n password We will send an OPT code to\n your email for the next steps',
                  style: TextStyle(color: AppColor.appclr),
                ),
                SizedBox(
                  height: heightScreen * 0.06,
                ),
                EmailWidgets(
                  icons1: Icons.email_outlined,
                  text1: 'Email',
                ),
                SizedBox(
                  height: heightScreen * 0.06,
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EnterOtpScreen()));
                    },
                    child: ContainerButtonWidget(text2: 'SEND OPT')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
