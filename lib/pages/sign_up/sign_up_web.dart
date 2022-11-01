// ignore_for_file: unused_field

import 'package:animate_do/animate_do.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:speed_code_login_screen/pages/home_page/home_page.dart';
import 'package:speed_code_login_screen/pages/sign_in/sign_in_page.dart';
import 'package:speed_code_login_screen/widgets/get_snackbar.dart';
import 'package:speed_code_login_screen/widgets/theme.dart';

class SignUpPageWeb extends StatefulWidget {
  final double width;
  final double margin;
  final double widthImage;
  final double heigtImage;
  const SignUpPageWeb(
      {Key? key,
      required this.width,
      required this.margin,
      required this.widthImage,
      required this.heigtImage})
      : super(key: key);

  @override
  State<SignUpPageWeb> createState() => _SignUpPageWebState();
}

class _SignUpPageWebState extends State<SignUpPageWeb> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
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
    if (nameController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty) {
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
          margin: EdgeInsets.symmetric(horizontal: widget.margin),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 150,
                  ),
                  FadeInDown(
                    duration: const Duration(milliseconds: 600),
                    delay: const Duration(milliseconds: 600),
                    child: Text(
                      "Sign Up Now",
                      style: blackTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Expanded(
                        child: Center(
                          child: FadeInDown(
                            duration: const Duration(milliseconds: 500),
                            delay: const Duration(milliseconds: 600),
                            child: Image.asset(
                              "assets/images/image2.png",
                              width: widget.widthImage,
                              height: widget.heigtImage,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            //
                            const SizedBox(
                              height: 15,
                            ),
                            FadeInDown(
                              duration: const Duration(milliseconds: 700),
                              delay: const Duration(milliseconds: 600),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Name",
                                    style: blackTextStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: medium,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    width: widget.width,
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
                                          "assets/images/icon_name.png",
                                          width: 16,
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        Expanded(
                                          child: TextField(
                                            style: blackTextStyle,
                                            controller: nameController,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText:
                                                  "Type Your Full Name...",
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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    width: widget.width,
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
                                            style: blackTextStyle,
                                            controller: emailController,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText:
                                                  "Type Your Email Address...",
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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    width: widget.width,
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
                                            style: blackTextStyle,
                                            onChanged: (password) =>
                                                onPasswordChanged(password),
                                            obscureText: !_isVisible,
                                            controller: passwordController,
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
                              child: SizedBox(
                                width: widget.width,
                                height: 45,
                                child: TextButton(
                                  onPressed: () {
                                    checkForm();
                                  },
                                  child: Text(
                                    "Creat New Account",
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
                                      "Already Account? ",
                                      style: greyTextStyle.copyWith(
                                        fontSize: 14,
                                        fontWeight: regular,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return const SignInPage();
                                        }));
                                      },
                                      child: Text(
                                        "Sign In",
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
                      ),
                    ],
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
