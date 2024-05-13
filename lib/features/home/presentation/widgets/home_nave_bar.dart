import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/features/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class HomeNavBar extends StatelessWidget {
  HomeNavBar({
    super.key,
  });
  final PersistentTabController _controller = PersistentTabController();
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: AppColors.primaryColor,
      navBarStyle: NavBarStyle.style1,
      navBarHeight: 79.h,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.h),
          topRight: Radius.circular(10.h),
        ),
      ),
    );
  }
}

List<Widget> _buildScreens() {
  return [
    const HomeScreen(),
    const Center(
      child: Text("cart"),
    ),
    const Center(
      child: Text("search"),
    ),
    const Center(
      child: Text("profile"),
    ),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.home_outlined),
      activeColorPrimary: Colors.brown,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.shopping_cart_outlined),
      activeColorPrimary: Colors.brown,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.search_outlined),
      activeColorPrimary: Colors.brown,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.people_outline),
      activeColorPrimary: Colors.brown,
    ),
  ];
}
