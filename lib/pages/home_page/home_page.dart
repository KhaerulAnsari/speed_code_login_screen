import 'package:flutter/material.dart';
import 'package:speed_code_login_screen/widgets/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                "assets/images/update.png",
                fit: BoxFit.cover,
                width: 300,
                height: 230,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                "Welcome,\n Next Update to My App",
                style: greyTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: medium,
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
