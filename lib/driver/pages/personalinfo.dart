import 'package:aaao_go/driver/pages/driverlicense.dart';
import 'package:aaao_go/driver/pages/vehicleinformation.dart';
import 'package:aaao_go/driver/widgets/backbtn.dart';
import 'package:aaao_go/driver/widgets/containerwidget.dart';
import 'package:aaao_go/driver/widgets/textfielwidgets.dart';
import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class PersonalInfoPage extends StatefulWidget {
  const PersonalInfoPage({super.key});

  @override
  State<PersonalInfoPage> createState() => _PersonalInfoPageState();
}

class _PersonalInfoPageState extends State<PersonalInfoPage> {
  final PageController _pageControllern = PageController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    var heightScreen = MediaQuery.of(context).size.height;
    var widthScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.black,
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                BackBtnPInfo(text1: 'Personal Info'),
                SizedBox(
                  height: heightScreen * 0.02,
                ),
                Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Container(
                          height: heightScreen * 0.1,
                          width: widthScreen * 0.1,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: AppColor.btnback),
                          child: Center(
                              child: Icon(
                            Icons.add,
                            size: 20,
                            color: AppColor.white,
                          )),
                        ),
                        Text(
                          'Upload ID Card / Passport',
                          style: TextStyle(color: AppColor.white),
                        ),
                      ],
                    )),
                SizedBox(
                  height: heightScreen * 0.02,
                ),
                DriverTextForm(
                  text2: 'Full Name',
                ),
                SizedBox(
                  height: heightScreen * 0.02,
                ),
                DriverTextForm(
                  text2: 'Email/Phone number',
                ),
                SizedBox(
                  height: heightScreen * 0.02,
                ),
                DriverTextForm(
                  text2: 'Date of Birth',
                ),
                SizedBox(
                  height: heightScreen * 0.02,
                ),
                DriverTextForm(
                  text2: 'Gender',
                  icons: Icons.arrow_downward_outlined,
                ),
                SizedBox(
                  height: heightScreen * 0.02,
                ),
                DriverTextForm(
                  text2: 'Residential Address',
                ),
                SizedBox(
                  height: heightScreen * 0.04,
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Driverlicense()));
                    },
                    child: ContainerButtonWidget(text2: 'Next')),
                SizedBox(
                  height: heightScreen * 0.02,
                ),
                Row(
                  children: List.generate(3, (index) {
                    return Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            currentPage == index ? Colors.blue : Colors.white,
                      ),
                    );
                  }),
                ),
                // Expanded(
                //     child: PageView(
                //   physics: NeverScrollableScrollPhysics(),
                //   controller: _pageControllern,
                //   onPageChanged: (index) {
                //     setState(() {
                //       currentPage = index;
                //     });
                //   },
                //   children: [
                //     PersonalInfoPage(),
                //     Driverlicense(),
                //     Vehicleinformation(),
                //   ],
                // )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
