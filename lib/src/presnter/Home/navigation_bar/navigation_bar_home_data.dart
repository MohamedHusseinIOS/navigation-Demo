import 'package:flutter/material.dart';
import 'package:navigation_demo/src/Presnter/base_classes/base_page.dart';
import 'package:navigation_demo/src/presnter/Home/new_page.dart';
import 'package:navigation_demo/src/presnter/base_classes/navigation_bar_tab.dart';

class NavigationBarHomeData implements NavigationBarTab {
  @override
  Widget get screen => _HomeScreen();
  
  

  @override
  BottomNavigationBarItem get item => BottomNavigationBarItem(
        label: 'Home',
        icon: Icon(
          Icons.home,
		  
        ),
      );
}

class _HomeScreen extends BasePage {
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
