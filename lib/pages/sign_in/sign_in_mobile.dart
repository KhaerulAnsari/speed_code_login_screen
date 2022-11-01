// ignore_for_file: prefer_final_fields, unused_field, sized_box_for_whitespace

import 'package:animate_do/animate_do.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:speed_code_login_screen/pages/home_page/home_page.dart';
import 'package:speed_code_login_screen/pages/sign_up/sign_up_page.dart';
import 'package:speed_code_login_screen/widgets/get_snackbar.dart';
import 'package:speed_code_login_screen/widgets/theme.dart';

class SignInMobilePage extends StatefulWidget {
  const SignInMobilePage({Key? key}) : super(key: key);

  @override
  State<SignInMobilePage> createState() => _SignInMobilePageState();
}

class _SignInMobilePageState extends State<SignInMobilePage> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  bool _isVisible = false;
  bool _isPasswordEighCharacters = false;
  bool _hasPasswordOneNumber = false;

  onPasswordChanged(String password) {
    final numericRegex = RegExp(r'[0-9]');

    setState(() {
      _isPasswordEighCharacters = false;
      if (password.length >= 8) _isPasswordEighCharacters = true;

      _hasPasswordOneNumber = false;
      if (numericRegex.hasMatch(password)) _hasPasswordOneNumber = true;
    });
  }

  checkForm() {
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      return snackbar("Silahkan lengkapi data anda");
    } else if (!EmailValidator.validate(emailController.text)) {
      return snackbar("Format email tidak di dukung");
    } else if (passwordController.text.length <= 5) {
      return snackbar("Password minimal 6 karakter");
    } else {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const HomePage();
      }));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const SizedBox(
                    height: 90,
                  ),
                  Center(
                    child: FadeInDown(
                      duration: const Duration(milliseconds: 500),
                      delay: const Duration(milliseconds: 600),
                      child: Image.asset(
                        "assets/images/image2.png",
                        width: 250,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //
                  const SizedBox(
                    height: 15,
                  ),
                  FadeInDown(
                    duration: const Duration(milliseconds: 600),
                    delay: const Duration(milliseconds: 600),
                    child: Text(
                      "Login",
                      style: blackTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  //
                  const SizedBox(
                    height: 15,
                  ),
                  FadeInDown(
                    duration: const Duration(milliseconds: 800),
                    delay: const Duration(milliseconds: 600),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Email",
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: medium,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          width: double.infinity,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: fieldColor,
                            ),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/icon_email.png",
                                width: 16,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: TextField(
                                  style: blackTextStyle.copyWith(),
                                  controller: emailController,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Type Your Email Address...",
                                    hintStyle: greyTextStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: regular,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  //
                  const SizedBox(
                    height: 20,
                  ),
                  FadeInDown(
                    duration: const Duration(milliseconds: 900),
                    delay: const Duration(milliseconds: 600),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Password",
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: medium,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          width: double.infinity,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: fieldColor,
                            ),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/icon_password.png",
                                width: 16,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: TextField(
                                  style: blackTextStyle.copyWith(),
                                  controller: passwordController,
                                  onChanged: (password) =>
                                      onPasswordChanged(password),
                                  obscureText: !_isVisible,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Type Your Password...",
                                    hintStyle: greyTextStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: regular,
                                    ),
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _isVisible = !_isVisible;
                                        });
                                      },
                                      icon: _isVisible
                                          ? const Icon(
                                              Icons.visibility,
                                              color: Colors.black,
                                            )
                                          : const Icon(
                                              Icons.visibility_off,
                                              color: Colors.grey,
                                            ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  /// BUTTON
                  const SizedBox(
                    height: 40,
                  ),
                  FadeInDown(
                    duration: const Duration(milliseconds: 1000),
                    delay: const Duration(milliseconds: 600),
                    child: Container(
                      width: double.infinity,
                      height: 45,
                      child: TextButton(
                        onPressed: () {
                          checkForm();
                        },
                        child: Text(
                          "Login",
                          style: whiteTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: medium,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: blueColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ),

                  ///
                  const SizedBox(
                    height: 15,
                  ),
                  FadeInDown(
                    duration: const Duration(milliseconds: 1100),
                    delay: const Duration(milliseconds: 600),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Dont Have an Account? ",
                            style: greyTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: regular,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const SignUpPage();
                              }));
                            },
                            child: Text(
                              "Create Account",
                              style: greyTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: medium,
                                color: blueSecond,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
