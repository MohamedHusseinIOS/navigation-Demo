import 'package:flutter/material.dart';
import 'package:navigation_demo/src/presnter/base_classes/base_page.dart';
import 'package:navigation_demo/src/presnter/base_classes/navigation_bar_tab.dart';

import 'tab_navigator.dart';

class NavigationBarMachinesData implements NavigationBarTab {
  @override
  BasePage get screen => MachinesScreen(Key('2'));

  @override
  BottomNavigationBarItem get item => BottomNavigationBarItem(
        label: 'Machines',
        icon: Icon(
          Icons.settings,
        ),
      );

  @override
  GlobalKey<NavigatorState> get navigatorKey =>
      GlobalKey<NavigatorState>(debugLabel: 'Navigation2');

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
  NavigatorState? navigator;

  MachinesScreen(Key key) : super(key);

  @override
  Widget basebuild(BuildContext context) {
    navigator = Navigator.of(context);
    return Center(
      child: Text('Machines'),
    );
  }
}
