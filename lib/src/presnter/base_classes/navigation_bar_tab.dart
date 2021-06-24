import 'package:flutter/material.dart';
import 'package:navigation_demo/src/presnter/Home/navigation_bar/tab_navigator.dart';
import 'base_page.dart';

abstract class NavigationBarTab {
  GlobalKey<NavigatorState> get navigatorKey;
  TabNavigator? navigator;
  BottomNavigationBarItem get item;
  BasePage get screen;
  TabNavigator buildNavigator();
}
