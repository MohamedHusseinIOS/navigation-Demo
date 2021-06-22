import 'package:flutter/material.dart';
import 'package:navigation_demo/src/presnter/Home/new_page.dart';
import 'presnter/Home/home_page.dart';

class SPRouter {
  final BuildContext context;

  SPRouter(this.context) {
    setupRoutes();
  }

  final home = HomePage();

  final Map<String, Widget Function(BuildContext)> routes = {};

  MaterialPageRoute onGenerateRoute(RouteSettings settings) {
    final name = settings.name;
    Widget Function(BuildContext) builder = routes[name] ?? (context) => home;
    return MaterialPageRoute(builder: builder, settings: settings);
  }
}

extension SetupRoutes on SPRouter {
  setupRoutes() {
    NewPage newPage = NewPage();
    routes.addAll({home.name ?? '': (context) => home});
	routes.addAll({newPage.name ?? '': (context) => newPage});
  }
}
