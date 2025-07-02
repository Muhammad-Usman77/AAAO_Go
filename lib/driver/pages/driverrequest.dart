import 'package:aaao_go/driver/widgets/requestdriver.dart';
import 'package:flutter/material.dart';

class DriverRequest extends StatefulWidget {
  const DriverRequest({super.key});

  @override
  State<DriverRequest> createState() => _DriverRequestState();
}

class _DriverRequestState extends State<DriverRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            DriverRequestWidget(
              isAccepted: true,
              image: Image.asset('assets/Ellipse 2.png'),
            )
          ],
        ),
      ),
    );
  }
}
