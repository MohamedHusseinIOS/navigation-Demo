import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('mmm@gmail.com'),
            accountEmail: Text('mmm'),
            currentAccountPicture: CircleAvatar(),
            decoration: BoxDecoration(
              color: Colors.red,
            ),
          ),
          ListTile(
            title: Text('Bottom TabBar'),
          )
        ],
      ),
    );
  }
}
