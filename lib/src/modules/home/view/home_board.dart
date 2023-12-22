import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../theme/app_color.dart';
import 'home_page.dart';

class HomeBoard extends StatefulWidget {
  const HomeBoard({super.key});

  @override
  State<HomeBoard> createState() => _HomeBoardState();
}

class _HomeBoardState extends State<HomeBoard> {
  int _selectedIndex = 0;

  List<Widget> tabItems = [
    const HomePage(),
    const HomePage(),
    const HomePage(),
    const HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabItems[_selectedIndex],
      bottomNavigationBar: FlashyTabBar(
        iconSize: 30,
        selectedIndex: _selectedIndex,
        showElevation: true,
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          FlashyTabBarItem(
            icon: const Icon(Icons.home_filled),
            title: const Text('Home'),
            activeColor: primaryColour,
          ),
          FlashyTabBarItem(
            icon: SvgPicture.asset("assets/svg/heart.svg"),
            title: const Text('Wishlist'),
            activeColor: primaryColour,
          ),
          FlashyTabBarItem(
            icon: SvgPicture.asset("assets/svg/bag.svg"),
            title: const Text('Cart'),
            activeColor: primaryColour,
          ),
          FlashyTabBarItem(
            icon: SvgPicture.asset("assets/svg/wallet.svg"),
            title: const Text('Wallet'),
            activeColor: primaryColour,
          ),
        ],
      ),
    );
  }
}
