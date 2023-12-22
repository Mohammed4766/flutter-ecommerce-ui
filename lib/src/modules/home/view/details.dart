import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/custom_navigation_botton.dart';
import '../components/custom_details_appbar.dart';
import '../components/product_imge.dart';
import '../components/size_card.dart';
import 'home_board.dart';

class Details extends StatelessWidget {
  const Details({
    super.key,
    required this.imgePath,
    required this.price,
  });

  final String imgePath;
  final String price;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: CustomDetailsAppBar(
            onPressedBack: () {
              Get.off(() => const HomeBoard());
            },
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              width: 250,
              height: size.height / 3.5,
              child: Image.asset(
                imgePath,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                  child: Row(
                children: [
                  const Expanded(
                    flex: 2,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Men's Printed Pullover Hoodie",
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xff8F959E))),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Nike Club Fleece",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold))
                        ]),
                  ),
                  Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text("Price ",
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xff8F959E))),
                          const SizedBox(
                            height: 10,
                          ),
                          Text("\$ $price",
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                        ]),
                  ),
                ],
              )),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ProductImge(imgePath: imgePath),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.all(15),
              child: const Text(
                "Size",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
            const SizeCard(),
          ],
        ),
        bottomNavigationBar: CustomNavigationBotton(
          onPressed: () {},
          text: "Add to Cart",
        ),
      ),
    );
  }
}
