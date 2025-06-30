import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Dialog(
        backgroundColor: AppColor.appclr2,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            //  mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'WelCome!👋 Buddy..',
                style: TextStyle(color: AppColor.appclr),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Congratulations! 🎉',
                style: TextStyle(color: AppColor.appclr),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Close',
                    style: TextStyle(color: AppColor.appclr),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
