import 'package:flutter/material.dart';

class SPBottomNavigationBar extends StatefulWidget {
  int index;
  Function(int index) tabBarSelection;
  final List<BottomNavigationBarItem> itemsList;
  SPBottomNavigationBar(
      {required this.tabBarSelection,
      required this.itemsList,
      required this.index});

  @override
  State<StatefulWidget> createState() {
    return SPBottomNavigationBar_Status(tabBarSelection, itemsList, index);
  }
}

class SPBottomNavigationBar_Status extends State<SPBottomNavigationBar> {
  int _index = 0;
  Function(int index) _tabBarSelection;
  final List<BottomNavigationBarItem> _itemsList;
  SPBottomNavigationBar_Status(
      this._tabBarSelection, this._itemsList, this._index);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _index,
      onTap: (index) => setState(() {
        _tabBarSelection(index);
      }),
      selectedItemColor: Theme.of(context).primaryColor,
      unselectedItemColor: Colors.grey,
      items: _itemsList,
    );
  }
}
