import 'package:aaao_go/authencation/forget/newpassword.dart';
import 'package:aaao_go/authencation/forget/widgets/emailwidget.dart';
import 'package:aaao_go/driver/widgets/containerwidget.dart';
import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class EnterOtpScreen extends StatefulWidget {
  const EnterOtpScreen({super.key});

  @override
  State<EnterOtpScreen> createState() => _EnterOtpScreenState();
}

class _EnterOtpScreenState extends State<EnterOtpScreen> {
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
                  'Enter OTP Code',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: AppColor.appclr),
                ),
                SizedBox(
                  height: heightScreen * 0.08,
                ),
                Text(
                  'Please check your email inbox for a message\n from loyalty. Enter theone-time verification\n code below',
                  style: TextStyle(color: AppColor.appclr),
                ),
                SizedBox(
                  height: heightScreen * 0.04,
                ),
                EmailWidgets(
                  icons1: Icons.email_outlined,
                  text1: 'Enter opt',
                ),
                SizedBox(
                  height: heightScreen * 0.04,
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NewPasswordScreen()));
                    },
                    child: ContainerButtonWidget(text2: 'PROCEED')),
                SizedBox(
                  height: heightScreen * 0.01,
                ),
                Text(
                  'RESEND OTP',
                  style: TextStyle(
                      color: AppColor.appclr,
                      decoration: TextDecoration.underline,
                      decorationColor: AppColor.appclr),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
