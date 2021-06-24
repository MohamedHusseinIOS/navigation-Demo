import 'package:flutter/material.dart';
import 'package:navigation_demo/src/sp_router.dart';

class TabNavigator extends StatelessWidget {
  final String initialRoute;
  final GlobalKey<NavigatorState> navigatorKey;
  TabNavigator({required this.initialRoute, required this.navigatorKey});

  @override
  Widget build(BuildContext context) {
    final router = SPRouter(context);
    final navigator = Navigator(
      key: navigatorKey,
      initialRoute: initialRoute,
      onGenerateRoute: router.onGenerateRoute,
    );
    return navigator;
  }
}
