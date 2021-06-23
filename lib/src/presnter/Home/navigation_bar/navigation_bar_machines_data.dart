import 'package:flutter/material.dart';
import 'package:navigation_demo/src/Presnter/base_classes/base_page.dart';
import 'package:navigation_demo/src/presnter/base_classes/navigation_bar_tab.dart';
import 'package:navigation_demo/src/sp_router.dart';

import 'tab_navigator.dart';

class NavigationBarMachinesData implements NavigationBarTab {
  @override
  Widget get screen => MachinesScreen();

  @override
  BottomNavigationBarItem get item => BottomNavigationBarItem(
        label: 'Machines',
        icon: Icon(
          Icons.settings,
        ),
      );

  @override
  GlobalKey<NavigatorState> get navigatorKey => GlobalKey<NavigatorState>();

  @override
  TabNavigator? navigator;

  NavigationBarMachinesData() {
    navigator = TabNavigator(
      initialRoute: (MachinesScreen).toString(),
      navigatorKey: navigatorKey,
    );
  }

  @override
  TabNavigator buildNavigator() {
    return navigator!;
  }
}

class MachinesScreen extends BasePage {
  @override
  Widget basebuild(BuildContext context) {
    return Center(
      child: Text('Machines'),
    );
  }
}
