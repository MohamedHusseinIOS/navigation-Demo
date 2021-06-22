import 'package:flutter/material.dart';

abstract class BasePage extends StatelessWidget {
  String? name;
  RouteSettings? routeSettings;

  BasePage() {
    name = this.runtimeType.toString();
  }

  @override
  Widget build(BuildContext context) {
    routeSettings = ModalRoute.of(context)!.settings;
    return basebuild(context);
  }

  Widget basebuild(BuildContext context);
}
