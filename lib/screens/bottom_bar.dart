import 'package:ecommerce/screens/homepage_screen.dart';
import 'package:ecommerce/screens/shop_screen.dart';
import 'package:ecommerce/screens/wish_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({
    super.key,
  });

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  bool selectBottom = true;
  final controller = PersistentTabController(initialIndex: 0);
  List<Widget> _buildScreen() {
    return [
      const HomepageScreen(),
      const WishListScreen(),
      const ShopScreen(),
      const Center(child: Text('message')),
      const Center(child: Text('setting')),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItem() {
    return [
      PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.home,
            color: Colors.red,
          ),
          inactiveIcon: const Icon(
            Icons.home,
            color: Colors.black,
          ),
          title: 'Home',
          activeColorPrimary: Colors.pink),
      PersistentBottomNavBarItem(
          icon: const Icon(Icons.favorite_border_outlined, color: Colors.red),
          inactiveIcon: const Icon(
            Icons.favorite_outline_outlined,
            color: Colors.black,
          ),
          title: 'Wishlist',
          activeColorPrimary: Colors.pink),
      PersistentBottomNavBarItem(
          icon: const Icon(Icons.shop_outlined, color: Colors.black),
          inactiveIcon: const Icon(
            Icons.shop_outlined,
            color: Colors.black,
          ),

          // inactiveColorPrimary: Colors.black,
          activeColorPrimary: Colors.pink
          // textStyle: TextStyle(
          //     color: (selectBottom == true) ? Colors.black : Colors.red),
          ),
      PersistentBottomNavBarItem(
          icon: const Icon(Icons.search, color: Colors.red),
          inactiveIcon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
          title: 'Search',
          activeColorPrimary: Colors.pink),
      PersistentBottomNavBarItem(
          icon: const Icon(Icons.settings, color: Colors.red),
          inactiveIcon: const Icon(
            Icons.settings,
            color: Colors.black,
          ),
          title: 'Setting',
          activeColorPrimary: Colors.pink)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreen(),
      items: _navBarItem(),
      controller: controller,
      navBarStyle: NavBarStyle.style15,
      decoration: NavBarDecoration(borderRadius: BorderRadius.circular(4)),
    );
  }
}
