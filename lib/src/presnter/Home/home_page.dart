import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigation_demo/src/presnter/Home/home_states.dart';
import 'package:navigation_demo/src/presnter/Home/home_bloc.dart';
import 'package:navigation_demo/src/presnter/Home/home_event.dart';
import 'package:navigation_demo/src/presnter/base_classes/base_page.dart';
import 'package:navigation_demo/src/presnter/side_menu.dart';
import 'navigation_bar/bar_items.dart';
import 'navigation_bar/sp_bottom_navigation_bar.dart';

class HomePage extends BasePage {
  final barItems = BarItems();
  BottomNavigationBarItem? currentItem;
  @override
  Widget basebuild(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(),
            body: body(state, context),
            bottomNavigationBar: navigationBar(context),
            drawer: SideMenu(),
          );
        },
        buildWhen: (previousState, state) {
          return (state is ChangeBarScreenState);
        },
      ),
    );
  }

  Widget body(HomeState state, BuildContext context) {
    int selectedIndex = 0;
    if (state is ChangeBarScreenState) {
      selectedIndex = state.selectedIndex;
    } else {
      selectedIndex = 0;
    }
    return navigationBarScreens(selectedIndex, context);
  }

  Widget navigationBar(BuildContext context) {
    return SPBottomNavigationBar(
      tabBarSelection: (int index) {
        context
            .read<HomeBloc>()
            .add(changeBarScreenEvent(selectedIndex: index));
      },
      itemsList: barItems.itemsList.map((model) => model.item).toList(),
    );
  }

  Widget navigationBarScreens(int selectedIndex, BuildContext context) {
    final key = barItems.itemsList[selectedIndex].navigatorKey;
    return WillPopScope(
      onWillPop: () async => !await Navigator.maybePop(key.currentState!.context),
      child: Stack(
        children: [
          Offstage(
            offstage: barItems.itemsList[selectedIndex] != barItems.home,
            child: barItems.home.buildNavigator(),
          ),
          Offstage(
            offstage: barItems.itemsList[selectedIndex] != barItems.machines,
            child: barItems.machines.buildNavigator(),
          )
        ],
      ),
    );
  }
}
