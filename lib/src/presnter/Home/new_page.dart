import 'package:flutter/material.dart';
import 'package:navigation_demo/src/presnter/base_classes/base_page.dart';

class NewPage extends BasePage {
  NewPage(Key key) : super(key);

	
  @override
  Widget basebuild(BuildContext context) {
    return Center(
      child: Scaffold(
        body: Center(
          child: Text("NewPage"),
        ),
      ),
    );
  }
}
