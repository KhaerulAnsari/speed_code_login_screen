import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speed_code_login_screen/widgets/theme.dart';

snackbar(String message) {
  return Get.snackbar(
    "",
    "",
    backgroundColor: const Color(0xFFD9435E),
    icon: const Icon(
      Icons.close,
      color: Colors.white,
    ),
    titleText: Text(
      "Error!",
      style: blackTextStyle.copyWith(
        color: whiteColor,
        fontWeight: medium,
        fontSize: 16,
      ),
    ),
    messageText: Text(
      message,
      style: blackTextStyle.copyWith(
        color: whiteColor,
      ),
    ),
  );
}
