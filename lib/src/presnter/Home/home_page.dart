import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigation_demo/src/presnter/Home/Home_States.dart';
import 'package:navigation_demo/src/presnter/Home/home_bloc.dart';
import 'package:navigation_demo/src/presnter/Home/home_event.dart';
import 'package:navigation_demo/src/presnter/base_classes/base_page.dart';
import 'package:navigation_demo/src/presnter/side_menu.dart';
import 'navigation_bar/bar_items.dart';
import 'navigation_bar/sp_bottom_navigation_bar.dart';

class HomePage extends BasePage {
  int selectionIndex = 0;
  final barItems = BarItems();

  @override
  Widget basebuild(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          var index;
          if (state is ChangeBarScreenState) {
            index = state.selectedIndex;
          } else {
            index = 0;
          }
          return body(context, index);
        },
        buildWhen: (previousState, state) {
          return (state is ChangeBarScreenState);
        },
      ),
    );
  }

  Widget body1(BuildContext context, int selectedIndex) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: barItems.itemsList.map((model) => model.item).toList(),
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(middle: Text('Page1')),
              child: Center(),
            );
          },
        );
      },
    );
  }

  Widget body(BuildContext context, int selectedIndex) {
    return Scaffold(
      appBar: AppBar(),
      body: barItems.itemsList[selectedIndex].screen,
      bottomNavigationBar: navigationBar(context, selectedIndex),
      drawer: SideMenu(),
    );
  }
  
  Widget navigationBar(BuildContext context, int selectedIndex) {
	  return SPBottomNavigationBar(
        tabBarSelection: (int index) {
          context
              .read<HomeBloc>()
              .add(changeBarScreenEvent(selectedIndex: index));
        },
        itemsList: barItems.itemsList.map((model) => model.item).toList(),
        index: selectedIndex,
      );
  }
}
