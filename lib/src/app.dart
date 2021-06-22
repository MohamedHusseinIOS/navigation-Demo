import 'package:flutter/material.dart';
import 'package:navigation_demo/src/sp_router.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final router = SPRouter(context);
    return MaterialApp(
      theme: ThemeData.light(),
      home: router.home,
      routes: router.routes,
      onGenerateRoute: router.onGenerateRoute,
    );
  }
}
