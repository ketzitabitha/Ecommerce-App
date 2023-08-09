import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:kavin_mart/Screens/cart_screen.dart';
import 'package:kavin_mart/Screens/home_screen.dart';
import 'package:kavin_mart/Screens/orders_user.dart';
import 'package:kavin_mart/Screens/profile_screen.dart';

import '../Controllers/navigation_controller.dart';

class GNavi extends StatelessWidget {
  GNavi({super.key});

  NavigationController controller = Get.put(NavigationController());

  final pageOptions = [
    HomePage(),
    CartPage(),
    OrdersUser(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GetBuilder<NavigationController>(
      builder: (controller) {
        return Scaffold(
          body: DoubleBackToCloseApp(
            snackBar:
                const SnackBar(content: Text('Tap back again to exit app')),
            child: Obx(
              (() => IndexedStack(
                    index: controller.selectedPage.value,
                    children: pageOptions,
                  )),
            ),
          ),
          bottomNavigationBar: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0xffFFDFD8),
                  blurRadius: 10,
                  spreadRadius: 3,
                  offset: Offset(
                    15,
                    0,
                  ),
                )
              ],
            ),
            child: GNav(
              tabMargin: const EdgeInsets.all(10),
              rippleColor: Colors.white, // tab button ripple color when pressed
              hoverColor: Color.fromARGB(255, 0, 0, 0), // tab button hover color
              haptic: true, // haptic feedback
              tabBorderRadius: 100,
              curve: Curves.easeOutExpo, // tab animation curves
              duration:
                  const Duration(milliseconds: 100), // tab animation duration
              gap: 0, // the tab button gap between icon and text
              color: Colors.grey[800], // unselected icon color
              activeColor: Colors.green, // selected icon and text color
              iconSize: 24, // tab button icon size
              tabBackgroundColor: Colors.green
                  .withOpacity(0.1), // selected tab background color
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              onTabChange: (int index) {
                controller.selectedPage.value = index;
                controller.update();
              }, // navigation bar padding
              tabs: [
                GButton(
                  icon: Icons.home,
                  iconColor: const Color(0xffB0B0B0),
                  iconSize: size.height * 0.043,
                  iconActiveColor: Colors.green,
                  gap: 4,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.shopping_cart_outlined,
                  iconSize: size.height * 0.043,
                  iconColor: const Color(0xffB0B0B0),
                  iconActiveColor: Colors.green,
                  gap: 4,
                  text: 'Cart',
                ),
                GButton(
                  icon: Icons.shopping_bag_outlined,
                  iconColor: const Color(0xffB0B0B0),
                  iconSize: size.height * 0.043,
                  iconActiveColor: Colors.green,
                  gap: 4,
                  text: 'Orders',
                ),
                GButton(
                  icon: Icons.person,
                  iconSize: size.height * 0.043,
                  iconColor: const Color(0xffB0B0B0),
                  iconActiveColor: Colors.green,
                  gap: 4,
                  text: 'Profile',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}