import 'package:aaao_go/utils/clr.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/ellipse.png')),
        ),
      ),
      title: Text(
        'Maion Huel',
        style: TextStyle(color: AppColor.white),
      ),
      subtitle: Text(
        'Vera30@Yahoo.com',
        style: TextStyle(color: AppColor.white),
      ),
      trailing: Icon(Icons.mode_edit_outline_outlined, color: AppColor.white),
    );
    // Row(
    //   children: [
    //     Container(
    //       height: 100,
    //       width: 100,
    //       decoration: BoxDecoration(
    //         image: DecorationImage(image: AssetImage('assets/ellipse.png')),
    //       ),
    //     ),
    //     Column(
    //       children: [
    //         Text('Maion Huel'),
    //         Text('Vera30@Yahoo.com'),
    //       ],
    //     )
    //   ],
    // );
  }
}
