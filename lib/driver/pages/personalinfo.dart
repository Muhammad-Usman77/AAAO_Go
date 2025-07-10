import 'package:aaao_go/driver/pages/driverlicense.dart';
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
  @override
  Widget build(BuildContext context) {
    var heightScreen = MediaQuery.of(context).size.height;
    var widthScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.appclr2,
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                BackBtnPInfo(
                    icons: Icons.arrow_back_ios_new, text1: 'Personal Info'),
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
                              shape: BoxShape.circle, color: AppColor.boxBack),
                          child: Center(
                              child: Icon(
                            Icons.add,
                            size: 20,
                            color: AppColor.appclr,
                          )),
                        ),
                        Text(
                          'Upload ID Card / Passport',
                          style: TextStyle(color: AppColor.appclr),
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
                    borderRadius: BorderRadius.circular(20),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
 /*     SizedBox(
                  height: 100,
                  width: 100,
                  child: PageView.builder(
                    controller: _pageController,
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    itemCount: pages.length + 1,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Container(
                          color: Colors.blue,
                          child: const Center(child: Text('This is Page 1')),
                        );
                      }
                      return pages[index - 1];
                    },
                  ),
                ),
             */