import 'package:flutter/material.dart';
import 'package:navigation_demo/src/presnter/base_classes/base_page.dart';
import 'package:navigation_demo/src/presnter/base_classes/tabbar_tab.dart';

class TabBarHome implements TabBarTab {
  @override
  Widget get screen => _TabBarHomeScreen();

  @override
  Tab get tab => Tab(
        //text: 'home',
        icon: Icon(Icons.home),
        child: screen,
      );
}

class _TabBarHomeScreen extends BasePage {
  @override
  Widget basebuild(BuildContext context) {
    return Center(
      child: Text('home'),
    );
  }
}
