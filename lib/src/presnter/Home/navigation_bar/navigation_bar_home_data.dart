import 'package:flutter/material.dart';
import 'package:navigation_demo/src/presnter/Home/navigation_bar/tab_navigator.dart';
import 'package:navigation_demo/src/presnter/Home/new_page.dart';
import 'package:navigation_demo/src/presnter/base_classes/base_page.dart';
import 'package:navigation_demo/src/presnter/base_classes/navigation_bar_tab.dart';

class NavigationBarHomeData implements NavigationBarTab {
  @override
  BasePage get screen => HomeScreen(Key('1'));

  @override
  BottomNavigationBarItem get item => BottomNavigationBarItem(
        label: 'Home',
        icon: Icon(
          Icons.home,
        ),
      );

  @override
  GlobalKey<NavigatorState> get navigatorKey => GlobalKey<NavigatorState>(debugLabel: 'Navigation1');
	
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
  NavigatorState? navigator;

  HomeScreen(Key key) : super(key);
  @override
  Widget basebuild(BuildContext context) {
    navigator = Navigator.of(context);
    return Center(
        child: MaterialButton(
      onPressed: () {
        Navigator.pushNamed(context, (NewPage).toString());
      },
      color: Theme.of(context).primaryColor,
      child: Text(
        'newPage',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ));
  }
}
