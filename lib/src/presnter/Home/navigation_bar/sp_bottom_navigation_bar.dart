import 'package:flutter/material.dart';

class SPBottomNavigationBar extends StatefulWidget {
  Function(int index) tabBarSelection;
  final List<BottomNavigationBarItem> itemsList;
  SPBottomNavigationBar({
    required this.tabBarSelection,
    required this.itemsList,
  });

  @override
  State<StatefulWidget> createState() {
    return SPBottomNavigationBar_Status(tabBarSelection, itemsList);
  }
}

class SPBottomNavigationBar_Status extends State<SPBottomNavigationBar> {
  int _index = 0;
  Function(int index) _tabBarSelection;
  final List<BottomNavigationBarItem> _itemsList;
  SPBottomNavigationBar_Status(
    this._tabBarSelection,
    this._itemsList,
  );

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _index,
      onTap: (index) => setState(() {
        _index = index;
        _tabBarSelection(index);
      }),
      selectedItemColor: Theme.of(context).primaryColor,
      unselectedItemColor: Colors.grey,
      items: _itemsList,
    );
  }
}
