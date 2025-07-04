import 'package:aaao_go/authencation/login/login.dart';
import 'package:aaao_go/process/screens/process.dart';
import 'package:aaao_go/utils/clr.dart';
import 'package:aaao_go/widgets/buttonrow.dart';
import 'package:aaao_go/widgets/textbutton.dart';
import 'package:aaao_go/widgets/textform.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                // spacing: 20,
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                          height: 160, width: 160, 'assets/logo.png')),
                  Textformwidget(
                      backColor: AppColor.btnback, hint: 'First Name'),
                  SizedBox(
                    height: 20,
                  ),
                  Textformwidget(
                      backColor: AppColor.btnback, hint: 'Last Name'),
                  SizedBox(
                    height: 20,
                  ),
                  Textformwidget(
                      backColor: AppColor.btnback, hint: 'Email/Phone number'),
                  SizedBox(
                    height: 20,
                  ),
                  Textformwidget(
                      backColor: AppColor.btnback, hint: 'Sponsor By'),
                  SizedBox(
                    height: 20,
                  ),
                  //confirm password
                  Textformwidget(
                      icons: Icons.visibility_off_outlined,
                      backColor: AppColor.btnback,
                      hint: ' Password'),
                  SizedBox(
                    height: 20,
                  ),
                  Textformwidget(
                      icons: Icons.visibility_off_outlined,
                      backColor: AppColor.btnback,
                      hint: 'Confirm Password'),
                  // SizedBox(height: 20,),
                  // this is for check box and forget password
                  Row(
                    children: [
                      Checkbox(
                        value: check,
                        onChanged: (value) {
                          check = value!;
                          setState(() {});
                        },
                      ),
                      Text(
                        'Agree with the Policies',
                        style: TextStyle(color: AppColor.btnback),
                      ),
                      Spacer(),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProcessScreen()));
                    },
                    child: Textbuttonwidget(
                      name: 'SIGN UP',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // this row for sign in
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 3,
                        width: 80,
                        decoration: BoxDecoration(
                            color: AppColor.btnback,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      Text(
                        'Or sign in with',
                        style: TextStyle(color: AppColor.white),
                      ),
                      Container(
                        height: 3,
                        width: 80,
                        decoration: BoxDecoration(
                            color: AppColor.btnback,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
// this row for google , x, apple
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Textbottonrow(
                          image: 'assets/gg.png',
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Textbottonrow(
                          image: 'assets/apple.png',
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Textbottonrow(
                          image: 'assets/x.png',
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Dont have account? ',
                        style: TextStyle(
                          color: AppColor.white,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                        child: Text(
                          ' Sign In',
                          style: TextStyle(
                              color: AppColor.white,
                              decoration: TextDecoration.underline,
                              decorationColor: AppColor.white),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
