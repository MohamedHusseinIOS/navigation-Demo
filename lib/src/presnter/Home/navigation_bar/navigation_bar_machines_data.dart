import 'package:flutter/material.dart';
import 'package:navigation_demo/src/Presnter/base_classes/base_page.dart';
import 'package:navigation_demo/src/presnter/base_classes/navigation_bar_tab.dart';

class NavigationBarMachinesData implements NavigationBarTab {
  @override
  Widget get screen => _MachinesScreen();

  @override
  BottomNavigationBarItem get item => BottomNavigationBarItem(
        label: 'Machines',
        icon: Icon(
          Icons.settings,
        ),
      );
}

class _MachinesScreen extends BasePage {
  @override
  Widget basebuild(BuildContext context) {
    return Center(
      child: Text('Machines'),
    );
  }
}
