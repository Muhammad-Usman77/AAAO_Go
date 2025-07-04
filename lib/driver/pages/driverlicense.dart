import 'package:aaao_go/driver/pages/vehicleinformation.dart';
import 'package:aaao_go/driver/widgets/backbtn.dart';
import 'package:aaao_go/driver/widgets/containerwidget.dart';
import 'package:aaao_go/driver/widgets/textfielwidgets.dart';
import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class Driverlicense extends StatefulWidget {
  const Driverlicense({super.key});

  @override
  State<Driverlicense> createState() => _DriverlicenseState();
}

class _DriverlicenseState extends State<Driverlicense> {
  @override
  Widget build(BuildContext context) {
    var heightScreen = MediaQuery.of(context).size.height;
    var widthScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.appclr2,
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                BackBtnPInfo(text1: 'Driver License'),
                SizedBox(
                  height: heightScreen * 0.2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: heightScreen * 0.1,
                          width: widthScreen * 0.1,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: AppColor.btnback2),
                          child: Center(
                              child: Icon(
                            Icons.add,
                            size: 20,
                            color: AppColor.appclr,
                          )),
                        ),
                        Text(
                          'License Image',
                          style: TextStyle(color: AppColor.appclr),
                        ),
                      ],
                    ),
                    Column(
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
                          'Selfie With License',
                          style: TextStyle(color: AppColor.appclr),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: heightScreen * 0.06,
                ),
                DriverTextForm(
                  text2: 'License Number',
                ),
                SizedBox(
                  height: heightScreen * 0.03,
                ),
                DriverTextForm(
                  text2: 'Expiration date',
                ),
                SizedBox(
                  height: heightScreen * 0.08,
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(20),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Vehicleinformation()));
                    },
                    child: ContainerButtonWidget(text2: 'Next')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
