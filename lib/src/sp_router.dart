import 'package:flutter/material.dart';
import 'package:navigation_demo/src/presnter/Home/account_page.dart';
import 'package:navigation_demo/src/presnter/Home/navigation_bar/navigation_bar_home_data.dart';
import 'package:navigation_demo/src/presnter/Home/new_page.dart';
import 'presnter/Home/home_page.dart';
import 'presnter/Home/navigation_bar/navigation_bar_machines_data.dart';

class SPRouter {
  final BuildContext context;
  final mainKey = GlobalKey<NavigatorState>();
  final subKey = GlobalKey<NavigatorState>();

  SPRouter(this.context) {
    setupRoutes();
    setupSupRoutes();
  }

  final home = HomePage(Key('0'));

  final Map<String, Widget Function(BuildContext)> routes = {};

  MaterialPageRoute onGenerateRoute(RouteSettings settings) {
    final name = settings.name;
    Widget Function(BuildContext) builder = routes[name]!;
    return MaterialPageRoute(builder: builder, settings: settings);
  }
}

extension SetupRoutes on SPRouter {
  setupRoutes() {
    AccountPage account = AccountPage(Key('4'));
    routes.addAll({home.name ?? '': (context) => home});
    routes.addAll({account.name ?? '': (context) => account});
  }
}

extension SupRoutes on SPRouter {
  setupSupRoutes() {
    HomeScreen homeScreen = HomeScreen(Key('1'));
    MachinesScreen machinesScreen = MachinesScreen(Key('2'));
    NewPage newPage = NewPage(Key('3'));

    routes.addAll({homeScreen.name ?? '': (context) => homeScreen});
    routes.addAll({machinesScreen.name ?? '': (context) => machinesScreen});
    routes.addAll({(NewPage).toString(): (context) => newPage});
  }
}
