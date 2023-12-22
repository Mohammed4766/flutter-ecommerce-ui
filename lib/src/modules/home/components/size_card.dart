import 'package:flutter/material.dart';

import '../../../theme/app_color.dart';

class SizeCard extends StatefulWidget {
  const SizeCard({
    super.key,
  });

  @override
  State<SizeCard> createState() => _SizeCardState();
}

class _SizeCardState extends State<SizeCard> {
  String choice = "";

  sizeChange(String size) {
    setState(() {
      choice = size;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                sizeChange("S");
              },
              child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: choice == "S"
                          ? primaryColour
                          : const Color.fromRGBO(224, 225, 231, 1),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: const Center(
                      child: Text(
                    "S",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ))),
            ),
            InkWell(
              onTap: () {
                sizeChange("M");
              },
              child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: choice == "M"
                          ? primaryColour
                          : const Color.fromRGBO(224, 225, 231, 1),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: const Center(
                      child: Text(
                    "M",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ))),
            ),
            InkWell(
              onTap: () {
                sizeChange("L");
              },
              child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: choice == "L"
                          ? primaryColour
                          : const Color.fromRGBO(224, 225, 231, 1),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: const Center(
                      child: Text(
                    "L",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ))),
            ),
            InkWell(
              onTap: () {
                sizeChange("XL");
              },
              child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: choice == "XL"
                          ? primaryColour
                          : const Color.fromRGBO(224, 225, 231, 1),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: const Center(
                      child: Text(
                    "XL",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ))),
            ),
            InkWell(
              onTap: () {
                sizeChange("XXL");
              },
              child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: choice == "XXL"
                          ? primaryColour
                          : const Color.fromRGBO(224, 225, 231, 1),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: const Center(
                      child: Text(
                    "XXL",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ))),
            ),
            InkWell(
              onTap: () {
                sizeChange("XXXL");
              },
              child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: choice == "XXXL"
                          ? primaryColour
                          : const Color.fromRGBO(224, 225, 231, 1),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: const Center(
                      child: Text(
                    "XXXL",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ))),
            ),
          ],
        ),
      ),
    );
  }
}
