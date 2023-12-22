// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../theme/text_style.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text_button.dart';
import '../../Authorization/view/login.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [
              Color.fromRGBO(118, 97, 197, 1),
              Color.fromRGBO(176, 163, 229, 1),
            ])),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset("assets/images/1.png"),
            Positioned(
              bottom: size.height / 15,
              child: Container(
                padding: EdgeInsets.all(20),
                width: size.width / 1.1,
                height: size.height / 2.9,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(children: [
                  Text(
                    "Look Good, Feel Good",
                    style: TextStyle(
                        fontSize: size.width / 15, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Create your individual & unique style and look amazing everyday.",
                    style: MyTextStyle1,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomElevatedButton(
                            backgroundColor: Color.fromRGBO(245, 246, 250, 1),
                            text: "Men",
                            textColor: Color.fromRGBO(143, 149, 158, 1)),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: CustomElevatedButton(
                            backgroundColor: Color.fromRGBO(151, 117, 250, 1),
                            text: "Women"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextButton(
                    text: 'Skip',
                    textSize: 20,
                    onPressed: () {
                      Get.off(() => LoginPage());
                    },
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
