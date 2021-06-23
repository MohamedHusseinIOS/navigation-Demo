import 'package:flutter/material.dart';
import 'package:navigation_demo/src/presnter/Home/navigation_bar/tab_navigator.dart';
import 'package:navigation_demo/src/sp_router.dart';

abstract class NavigationBarTab {
  GlobalKey<NavigatorState> get navigatorKey;
  TabNavigator? navigator;
  BottomNavigationBarItem get item;
  Widget get screen;
  TabNavigator buildNavigator();
}
