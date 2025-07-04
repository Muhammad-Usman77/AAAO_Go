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
    return Dialog(
      backgroundColor: AppColor.appclr2,
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        height: heightScreen * 0.6,
        //width: double.infinity,
        //  padding: EdgeInsets.all(),
        //   decoration: BoxDecoration(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: heightScreen * 0.01,
              ),
              Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.cancel_outlined,
                    color: AppColor.appclr,
                  ),
                ),
              ),
              Image.asset('assets/dddd.png'),
              Text(
                'Payment Method',
                style: TextStyle(color: AppColor.appclr),
              ),
              SizedBox(
                height: 10,
              ),
              EmailWidgets(
                icons1: Icons.money,
                text1: 'Lorem Ipsum',
                icons2: Icons.check_circle_outline,
              ),
              SizedBox(
                height: 10,
              ),
              EmailWidgets(
                icons1: Icons.money,
                text1: 'Lorem Ipsum',
                icons2: Icons.check_circle_outline,
              ),
              SizedBox(
                height: 10,
              ),
              EmailWidgets(
                icons1: Icons.money,
                text1: 'Lorem Ipsum',
                icons2: Icons.check_circle_outline,
              ),
              SizedBox(
                height: 10,
              ),
              ContainerButtonWidget(text2: 'CONFIRM'),
            ],
          ),
        ),
      ),
    );
  }
}

void showPaymentMethodDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return DialogBox();
    },
  );
}
