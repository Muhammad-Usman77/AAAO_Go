import 'package:aaao_go/authencation/forget/widgets/emailwidget.dart';
import 'package:aaao_go/driver/widgets/containerwidget.dart';
import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var heightScreen = MediaQuery.of(context).size.height;
    // var widthScreen = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Dialog(
        backgroundColor: AppColor.appclr2,
        child: Container(
          height: heightScreen * 0.3,
          width: double.maxFinite,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(),
          child: Column(
            //  mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/dialog_car.png'),
              SizedBox(
                height: 20,
              ),
              Text(
                'Payment Method',
                style: TextStyle(color: AppColor.appclr),
              ),
              SizedBox(
                height: 20,
              ),
              EmailWidgets(
                icons1: Icons.money,
                text1: 'Lorem Ipsum',
                icons2: Icons.check_circle_outline,
              ),
              EmailWidgets(
                icons1: Icons.money,
                text1: 'Lorem Ipsum',
                icons2: Icons.check_circle_outline,
              ),
              EmailWidgets(
                icons1: Icons.money,
                text1: 'Lorem Ipsum',
                icons2: Icons.check_circle_outline,
              ),
              ContainerButtonWidget(text2: 'CONFIRM'),
            ],
          ),
        ),
      ),
    );
  }
}
