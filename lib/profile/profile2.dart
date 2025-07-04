import 'package:aaao_go/profile/widgets/listtile2.dart';
import 'package:aaao_go/profile/widgets/profileavatar.dart';
import 'package:aaao_go/profile/widgets/rowwidget.dart';
import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class Profile2Screen extends StatefulWidget {
  const Profile2Screen({super.key});

  @override
  State<Profile2Screen> createState() => _Profile2ScreenState();
}

class _Profile2ScreenState extends State<Profile2Screen> {
  @override
  Widget build(BuildContext context) {
    var heightScreen = MediaQuery.of(context).size.height;
   // var widthScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColor.appclr2,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileAvatar(),
              SizedBox(
                height: heightScreen * 0.02,
              ),
              ListTile2(
                  icons1: Icons.person_2_outlined,
                  text1: 'Phone Number',
                  icons2: Icons.edit_outlined),
              SizedBox(
                height: heightScreen * 0.0001,
              ),
              ListTile2(
                icons1: Icons.person_2_outlined,
                text1: 'KYC Status',
                // icons2: Icons.edit_outlined,
              ),
              SizedBox(
                height: heightScreen * 0.0001,
              ),
              ListTile2(
                  icons1: Icons.headphones_outlined,
                  text1: 'Service Provider',
                  icons2: Icons.radio_button_checked_sharp),
              SizedBox(
                height: heightScreen * 0.0001,
              ),
              ListTile2(
                  icons1: Icons.account_box,
                  text1: 'Referral Code',
                  icons2: Icons.edit_outlined),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Divider(),
              ),

              //  ListTile2(icons1:Icons.computer, text1:'Total Spend',),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 10),
                child: Row(
                  children: [
                    Text(
                      'Wallet',
                      style: TextStyle(color: AppColor.white),
                    ),
                    Spacer(),
                    Text(
                      '0.00 AED',
                      style: TextStyle(color: AppColor.white),
                    ),
                  ],
                ),
              ),
              RowWidgetProfile(
                  icons1: Icons.computer,
                  text1: 'Total Payment',
                  text2: '0.00 AED'),
              ListTile2(
                icons1: Icons.computer,
                text1: 'Add Payment Method',
                icons2: Icons.add_circle_outline_rounded,
              ),
              // RowWidgetProfile(
              //   icons1: Icons.person_2_outlined,
              //   text1: 'Phone Number',
              //   icons2: Icons.edit_outlined,
              // )
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  'My Account',
                  style: TextStyle(color: AppColor.white),
                ),
              ),

              ListTile2(
                  icons1: Icons.person_add_alt,
                  text1: 'Account Info',
                  icons2: Icons.arrow_forward),
              ListTile2(
                  icons1: Icons.lock_open_outlined,
                  text1: 'Change Password',
                  icons2: Icons.arrow_forward),
              ListTile2(
                  icons1: Icons.account_box,
                  text1: 'Support Ticket Center',
                  icons2: Icons.arrow_forward),
              ListTile2(
                  icons1: Icons.privacy_tip,
                  text1: 'Terms & Conditions',
                  icons2: Icons.arrow_forward),
            ],
          ),
        ),
      ),
    );
  }
}
