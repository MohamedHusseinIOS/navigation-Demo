import 'package:flutter/material.dart';
import 'package:navigation_demo/src/sp_router.dart';

abstract class BasePage extends StatelessWidget {
  String? name;
  RouteSettings? routeSettings;
  NavigatorState? navigator;

  BasePage(Key key) : super(key: key) {
    name = this.runtimeType.toString();
  }

  @override
  Widget build(BuildContext context) {
    routeSettings = ModalRoute.of(context)!.settings;
    return basebuild(context);
  }

  Widget basebuild(BuildContext context);
}
