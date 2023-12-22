import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomDetailsAppBar extends StatelessWidget {
  const CustomDetailsAppBar({
    super.key,
    required this.onPressedBack,
  });

  final VoidCallback onPressedBack;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30, bottom: 10),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFFF5F6FA),
              shape: BoxShape.circle,
            ),
            child: IconButton(
                onPressed: onPressedBack,
                icon: const Icon(
                  Icons.arrow_back_rounded,
                  size: 30,
                  color: Colors.black,
                )),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFFF5F6FA),
              shape: BoxShape.circle,
            ),
            child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/svg/bagb.svg",
                  height: 30,
                )),
          ),
        ],
      ),
    );
  }
}
