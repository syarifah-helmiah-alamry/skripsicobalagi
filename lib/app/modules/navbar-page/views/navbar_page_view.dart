import 'package:elibrary_ui/app/modules/account/views/account_view.dart';
import 'package:elibrary_ui/app/modules/home/views/home_view.dart';
import 'package:elibrary_ui/app/modules/listen/views/listen_view.dart';
import 'package:elibrary_ui/app/modules/shelf/views/shelf_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../controllers/navbar_page_controller.dart';

class NavbarPageView extends GetView<NavbarPageController> {
  final TextStyle unselectedLabelStyle = TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.w500,
      fontSize: 12);

  final TextStyle selectedLabelStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

  List<Widget> _buildScreen() {
    return [
      ListenView(),
      HomeView(),
      ShelfView(),
      AccountView(),
    ];
  }

  List<PersistentBottomNavBarItem> _navbarItem() {
    return [
      PersistentBottomNavBarItem(
          title: 'Listen',
          icon: const Icon(
            Icons.headphones_rounded,
            size: 24,
            color: Color(0xffFF735C),
          ),
          activeColorPrimary: const Color(0xffFF735C),
          inactiveColorPrimary: Colors.grey,
          inactiveColorSecondary: Colors.white),
      PersistentBottomNavBarItem(
          title: 'Home',
          icon: const Icon(
            Icons.home_rounded,
            size: 24,
            color: Color(0xffFF735C),
          ),
          activeColorPrimary: const Color(0xffFF735C),
          inactiveColorPrimary: CupertinoColors.systemGrey),
      PersistentBottomNavBarItem(
          title: 'Shelf',
          activeColorSecondary: Colors.black,
          icon: const Icon(Icons.view_column_outlined,
              size: 24, color: Color(0xffFF735C)),
          activeColorPrimary: const Color(0xffFF735C),
          inactiveColorPrimary: Colors.grey,
          inactiveColorSecondary: Colors.white),
      PersistentBottomNavBarItem(
          title: 'Account',
          activeColorSecondary: Colors.black,
          icon: const Icon(Icons.person_outline,
              size: 24, color: Color(0xffFF735C)),
          activeColorPrimary: const Color(0xffFF735C),
          inactiveColorPrimary: Colors.grey,
          inactiveColorSecondary: Colors.white),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      Get.context!,
      screens: _buildScreen(),
      items: _navbarItem(),
      stateManagement: true,
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      navBarStyle: NavBarStyle.style3,
      decoration: NavBarDecoration(
        colorBehindNavBar: Colors.black,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 3,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      controller: controller.contr,
    );
  }
}
