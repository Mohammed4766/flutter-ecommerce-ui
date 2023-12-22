// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton({
    super.key,
    required this.backgroundColor,
    required this.text,
    this.textColor = Colors.white,
    this.fontSize = 20,
  });
  final Color backgroundColor;
  final Color textColor;
  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backgroundColor,
          fixedSize: Size(50, 50),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4))),
        ),
        child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: fontSize),
        ));
  }
}
