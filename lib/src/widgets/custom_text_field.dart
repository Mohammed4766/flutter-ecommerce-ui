import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.text,
    required this.controller,
  });

  final String text;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: const Color.fromARGB(0, 62, 62, 63),
      style: const TextStyle(fontSize: 20),
      decoration: InputDecoration(
          label: Container(
              margin: const EdgeInsets.only(bottom: 15),
              child:
                  Text(text, style: const TextStyle(color: Color(0xff8F959E)))),
          contentPadding: const EdgeInsets.all(5),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          focusColor: Colors.black),
    );
  }
}
