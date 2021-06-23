import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:navigation_demo/src/presnter/base_classes/base_page.dart';

class NewPage extends BasePage {
  @override
  Widget basebuild(BuildContext context) {
    return Center(
      child: Scaffold(
        body: Center(
          child: Text("NewPAge"),
        ),
      ),
    );
  }
}
