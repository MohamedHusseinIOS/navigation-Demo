import 'package:flutter/material.dart';
import 'package:navigation_demo/src/presnter/Home/account_page.dart';

class SideMenu extends StatelessWidget {
  SideMenu();

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
            title: Text('Account'),
            onTap: () => {
              Navigator.of(context).pop(),
              Navigator.of(context).pushNamed((AccountPage).toString())
            },
          )
        ],
      ),
    );
  }
}
