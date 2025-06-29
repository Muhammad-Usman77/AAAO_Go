import 'package:aaao_go/authencation/signup/signup.dart';
import 'package:aaao_go/utils/clr.dart';
import 'package:aaao_go/widgets/buttonrow.dart';
import 'package:aaao_go/widgets/textbutton.dart';
import 'package:aaao_go/widgets/textform.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LognPageState();
}

bool check = false;

class _LognPageState extends State<LoginPage> {
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
                      child: Image.asset('assets/logo.png')),
                  Textformwidget(
                      backColor: AppColor.btnback, hint: 'Email/Phone number'),
                  SizedBox(
                    height: 20,
                  ),
                  Textformwidget(
                      icons: Icons.visibility_off_outlined,
                      backColor: AppColor.btnback,
                      hint: 'Password'),
                  // SizedBox(height: 20,),
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
                        'Remember me',
                        style: TextStyle(color: AppColor.btnback),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'Forget Password?',
                          style: TextStyle(
                              color: AppColor.btnback,
                              decoration: TextDecoration.underline,
                              decorationColor: AppColor.btnback),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Textbuttonwidget(
                    name: 'Sign Up',
                  ),
                  SizedBox(
                    height: 20,
                  ),
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
                                  builder: (context) => Signup()));
                        },
                        child: Text(
                          ' Sign Up',
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
