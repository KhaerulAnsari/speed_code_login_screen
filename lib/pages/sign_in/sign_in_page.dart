// ignore_for_file: prefer_final_fields, unused_field

import 'package:flutter/material.dart';
import 'package:speed_code_login_screen/pages/sign_in/sign_in_mobile.dart';
import 'package:speed_code_login_screen/pages/sign_in/sign_in_web.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth <= 700) {
        return const SignInMobilePage();
      } else if (constraints.maxWidth <= 1000) {
        return const SignInWebPage(
          margin: 60,
          heightImage: 300,
          widthImage: 300,
        );
      } else {
        return const SignInWebPage(
          margin: 200,
          heightImage: 350,
          widthImage: 350,
        );
      }
    });
  }
}
