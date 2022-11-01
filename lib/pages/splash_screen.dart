import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:speed_code_login_screen/pages/sign_up/sign_up_page.dart';
import 'package:speed_code_login_screen/widgets/theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: FadeInDown(
              duration: const Duration(milliseconds: 500),
              delay: const Duration(milliseconds: 500),
              child: Image.asset(
                'assets/images/images1.png',
                width: 250,
                height: 167,
                fit: BoxFit.cover,
              ),
            ),
          ),

          ///
          const SizedBox(
            height: 30,
          ),
          FadeInDown(
            duration: const Duration(milliseconds: 600),
            delay: const Duration(milliseconds: 500),
            child: Text(
              "Welcome to My Apps",
              style: blackTextStyle.copyWith(
                fontSize: 22,
                fontWeight: semiBold,
              ),
            ),
          ),

          //
          const SizedBox(
            height: 20,
          ),
          FadeInDown(
            duration: const Duration(milliseconds: 700),
            delay: const Duration(milliseconds: 500),
            child: Text(
              "Stay at home and you'll learn\nprogramming until you're good",
              style: greyTextStyle.copyWith(
                fontSize: 14,
                fontWeight: light,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          //
          const SizedBox(
            height: 40,
          ),
          FadeInDown(
            duration: const Duration(milliseconds: 800),
            delay: const Duration(milliseconds: 500),
            child: SizedBox(
              height: 45,
              width: 200,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SignUpPage();
                  }));
                },
                child: Text(
                  "Continu",
                  style: whiteTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                ),
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: blueColor,
                  elevation: 0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
