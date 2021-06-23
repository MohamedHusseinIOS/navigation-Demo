import 'package:flutter/material.dart';
import 'package:navigation_demo/src/Presnter/base_classes/base_page.dart';
import 'package:navigation_demo/src/presnter/Home/navigation_bar/tab_navigator.dart';
import 'package:navigation_demo/src/presnter/Home/new_page.dart';
import 'package:navigation_demo/src/presnter/base_classes/navigation_bar_tab.dart';
import 'package:navigation_demo/src/sp_router.dart';

class NavigationBarHomeData implements NavigationBarTab {
  @override
  Widget get screen => HomeScreen();

  @override
  BottomNavigationBarItem get item => BottomNavigationBarItem(
        label: 'Home',
        icon: Icon(
          Icons.home,
        ),
      );

  @override
  GlobalKey<NavigatorState> get navigatorKey => GlobalKey<NavigatorState>();

  @override
  TabNavigator? navigator;

  NavigationBarHomeData() {
    navigator = TabNavigator(
      initialRoute: (HomeScreen).toString(),
      navigatorKey: navigatorKey,
    );
  }

  @override
  TabNavigator buildNavigator() {
    return navigator!;
  }
}

class HomeScreen extends BasePage {
  @override
  Widget basebuild(BuildContext context) {
    return Center(
        child: MaterialButton(
      onPressed: () {
        Navigator.pushNamed(context, (NewPage).toString());
      },
      color: Theme.of(context).primaryColor,
      child: Text('newPage'),
    ));
  }
}
