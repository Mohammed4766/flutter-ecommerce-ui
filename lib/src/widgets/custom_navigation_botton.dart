// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../theme/app_color.dart';

class CustomNavigationBotton extends StatelessWidget {
  const CustomNavigationBotton({
    super.key,
    required this.text,
    required this.onPressed,
    this.aboveButton = "",
  });
  final VoidCallback onPressed;
  final String text;
  final String aboveButton;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(aboveButton),
        const SizedBox(
          height: 15,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(0),
          ),
          onPressed: onPressed,
          child: Container(
            height: size.height / 10,
            color: primaryColour,
            child: Center(
                child: Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 30),
            )),
          ),
        ),
      ],
    );
  }
}
