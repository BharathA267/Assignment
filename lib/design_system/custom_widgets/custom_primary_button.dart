import 'package:assignment/design_system/text_styles.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class CustomPrimaryButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const CustomPrimaryButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key); // Set the key using super constructor

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(
            const EdgeInsets.symmetric(vertical: 12)),
        backgroundColor: MaterialStateProperty.all(primaryColor),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text, style: buttonTextStyle()),
        ],
      ),
    );
  }
}
