import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/brands.dart';
import '../components/product_card.dart';
import '../components/custom_appbar.dart';
import '../components/heder.dart';
import '../models/product_model.dart';
import 'details.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const CustomAppBar(),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Heder(),
          ),
          const SizedBox(
            height: 15,
          ),
          const BrandSsection(),
          const SizedBox(
            height: 15,
          ),
          GridView.builder(
            shrinkWrap: true,
            itemCount: products.length,
            physics: const BouncingScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              mainAxisExtent: 320,
            ),
            itemBuilder: (context, index) {
              return ProductCard(
                onPressed: () {
                  Get.to(() => Details(
                        price: products[index].price,
                        imgePath: products[index].imgePath,
                      ));
                },
                title: products[index].title,
                imgePath: products[index].imgePath,
                price: products[index].price,
              );
            },
          ),
        ],
      ),
    );
  }
}
