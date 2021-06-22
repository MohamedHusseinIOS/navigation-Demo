import 'package:flutter/material.dart';

abstract class NavigationBarTab {
  BottomNavigationBarItem get item;
  Widget get screen;
}
