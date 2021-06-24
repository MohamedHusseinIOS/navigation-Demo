import 'package:flutter/material.dart';
import 'package:navigation_demo/src/presnter/base_classes/base_page.dart';

class AccountPage extends BasePage {
  AccountPage(Key key) : super(key);

  @override
  Widget basebuild(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Account Page'),
      ),
    );
  }
}
