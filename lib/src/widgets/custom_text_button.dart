// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    this.textColor = const Color(0xff8F959E),
    this.textSize = 25,
    required this.onPressed,
  });
  final String text;
  final Color textColor;
  final double textSize;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          foregroundColor: const Color.fromARGB(255, 112, 109, 109),
          padding: const EdgeInsets.all(0)
          ),
          
      onPressed: onPressed,
      child: Text(text, style: TextStyle(color: textColor, fontSize: textSize)),
    );
  }
}
