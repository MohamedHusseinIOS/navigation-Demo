import 'package:flutter/material.dart';
import 'package:navigation_demo/src/presnter/Home/navigation_bar/navigation_bar_home_data.dart';
import 'package:navigation_demo/src/presnter/Home/new_page.dart';
import 'presnter/Home/home_page.dart';
import 'presnter/Home/navigation_bar/navigation_bar_machines_data.dart';

class SPRouter {
  final BuildContext context;

  SPRouter(this.context) {
    setupRoutes();
    setupSupRoutes();
  }

  final home = HomePage();

  final Map<String, Widget Function(BuildContext)> routes = {};

  MaterialPageRoute onGenerateRoute(RouteSettings settings) {
    final name = settings.name;
    Widget Function(BuildContext) builder = routes[name]!;
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

extension SupRoutes on SPRouter {
  setupSupRoutes() {
    HomeScreen homeScreen = HomeScreen();
    MachinesScreen machinesScreen = MachinesScreen();

    routes.addAll({homeScreen.name ?? '': (context) => homeScreen});
    routes.addAll({machinesScreen.name ?? '': (context) => machinesScreen});
  }
}
