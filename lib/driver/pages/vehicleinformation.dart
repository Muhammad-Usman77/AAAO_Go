import 'package:aaao_go/driver/widgets/backbtn.dart';
import 'package:aaao_go/driver/widgets/containerwidget.dart';
import 'package:aaao_go/driver/widgets/docupload.dart';
import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class Vehicleinformation extends StatefulWidget {
  const Vehicleinformation({super.key});

  @override
  State<Vehicleinformation> createState() => _VehicleinformationState();
}

class _VehicleinformationState extends State<Vehicleinformation> {
  @override
  Widget build(BuildContext context) {
    var heightScreen = MediaQuery.of(context).size.height;
    var widthScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.black,
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                BackBtnPInfo(text1: 'Vehicle Information'),
                SizedBox(
                  height: heightScreen * 0.03,
                ),
                DocUploadWidget(text2: 'Passport'),
                SizedBox(
                  height: heightScreen * 0.02,
                ),
                DocUploadWidget(text2: 'ID'),
                SizedBox(
                  height: heightScreen * 0.02,
                ),
                DocUploadWidget(text2: 'Vehicle Registration Certificate'),
                SizedBox(
                  height: heightScreen * 0.02,
                ),
                DocUploadWidget(text2: 'Vehicle Insurance'),
                SizedBox(
                  height: heightScreen * 0.02,
                ),
                DocUploadWidget(text2: 'Roadworthiness Certificate'),
                SizedBox(
                  height: heightScreen * 0.02,
                ),
                DocUploadWidget(text2: 'Police Clearance Certificate'),
                SizedBox(
                  height: heightScreen * 0.02,
                ),
                DocUploadWidget(text2: 'Proof of Address'),
                SizedBox(
                  height: heightScreen * 0.02,
                ),
                DocUploadWidget(text2: 'Car Photo With Number plate'),
                SizedBox(
                  height: heightScreen * 0.04,
                ),
                ContainerButtonWidget(text2: 'Proceed')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
