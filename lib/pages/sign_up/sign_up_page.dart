import 'package:flutter/material.dart';
import 'package:speed_code_login_screen/pages/sign_up/sign_up_mobile_page.dart';
import 'package:speed_code_login_screen/pages/sign_up/sign_up_web.dart';
import 'package:speed_code_login_screen/widgets/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth <= 700) {
        return SignUpPageMobile(width: double.infinity, margin: defaultMargin);
      } else if (constraints.maxWidth <= 1000) {
        return const SignUpPageWeb(
          width: double.infinity,
          margin: 80,
          widthImage: 300,
          heigtImage: 300,
        );
      } else {
        return const SignUpPageWeb(
          width: double.infinity,
          margin: 200,
          widthImage: 350,
          heigtImage: 350,
        );
      }
    });
  }
}
