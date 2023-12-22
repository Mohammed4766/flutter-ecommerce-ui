import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.title,
    required this.imgePath,
    required this.price,
    required this.onPressed,
  });

  final String title;
  final String imgePath;
  final String price;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            color: Color.fromARGB(27, 172, 175, 185),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 200,
              child: Image.asset(
                imgePath,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(title, textAlign: TextAlign.left),
            const SizedBox(
              height: 10,
            ),
            Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  ' \$ $price ',
                  style: const TextStyle(fontWeight: FontWeight.w700),
                )),
          ],
        ),
      ),
    );
  }
}
