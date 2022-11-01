import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speed_code_login_screen/widgets/theme.dart';

class ConfirmDialog extends StatelessWidget {
  final String message;

  const ConfirmDialog({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text(
        message,
        style: blackTextStyle.copyWith(
          fontSize: 16,
        ),
      ),
      actions: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: Text(
              'Ok',
              style: whiteTextStyle,
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.redAccent,
              elevation: 0,
            ),
          ),
        ),
      ],
    );
  }
}
