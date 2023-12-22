import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../models/brand_model.dart';

class BrandSsection extends StatelessWidget {
  const BrandSsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Choose Brand",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            Text("View All"),
          ],
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: SizedBox(
          height: 50,
          child: ListView.builder(
            itemCount: Brands.length,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(right: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                decoration: const BoxDecoration(
                    color: Color(0xffF5F6FA),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Colors.white,
                      ),
                      child: SvgPicture.asset(
                        Brands[index].loglPath,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(Brands[index].title,
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                  ],
                ),
              );
            },
          ),
        ),
      )
    ]);
  }
}
