import 'package:flutter/material.dart';

class ProductImge extends StatelessWidget {
  const ProductImge({
    super.key,
    required this.imgePath,
  });
  final String imgePath;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            height: 70,
            width: 70,
            child: Image.asset(
              imgePath,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            height: 70,
            width: 70,
            child: Image.asset(
              imgePath,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            height: 70,
            width: 70,
            child: Image.asset(
              imgePath,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            height: 70,
            width: 70,
            child: Image.asset(
              imgePath,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            height: 70,
            width: 70,
            child: Image.asset(
              imgePath,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
