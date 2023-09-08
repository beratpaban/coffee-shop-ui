import 'package:coffee_shop/constants/color_constants.dart';
import 'package:coffee_shop/screen/cart.dart';
import 'package:coffee_shop/screen/favorite_page.dart';
import 'package:coffee_shop/screen/home_page.dart';
import 'package:coffee_shop/screen/notification_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> pages = [
    const HomePage(),
    const Cart(),
    const FavPage(),
    const NotificationPage(),
  ];

  int selectedIndex = 0;

  void onTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: onTap,
          type: BottomNavigationBarType.fixed,
          backgroundColor: ColorConstants.navigationBarColor,
          selectedItemColor: ColorConstants.buttonColor,
          unselectedItemColor: ColorConstants.mutedColor,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.house_rounded,
                size: 35,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_rounded,
                size: 35,
              ),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 35,
              ),
              label: "List",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications_active,
                size: 35,
              ),
              label: "Notifications",
            )
          ],
        ),
      ),
    );
  }
}
