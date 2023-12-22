import 'package:flutter/material.dart';

import '../../../theme/app_color.dart';

class Heder extends StatelessWidget {
  const Heder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Hello",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        const Text(
          "Welcome to Laza.",
          style: TextStyle(fontSize: 15, color: Colors.grey),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const Expanded(
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffF5F6FA),
                  border: UnderlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide.none),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 128, 121, 121),
                  ),
                  hintText: "Search...",
                  focusColor: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: primaryColour,
                  fixedSize: const Size(50, 50),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                ),
                child: const Icon(Icons.mic)),
          ],
        ),
      ],
    );
  }
}
