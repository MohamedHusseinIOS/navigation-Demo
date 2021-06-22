import 'package:navigation_demo/src/presnter/base_classes/navigation_bar_tab.dart';
import 'navigation_bar_home_data.dart';
import 'navigation_bar_machines_data.dart';

class BarItems {
  final NavigationBarHomeData home = NavigationBarHomeData();
  final NavigationBarMachinesData machines = NavigationBarMachinesData();

  List<NavigationBarTab> get itemsList => [home, machines];
}
