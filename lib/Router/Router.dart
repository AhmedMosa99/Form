import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter {
  AppRouter._();
  static AppRouter appRouter = AppRouter._();
  GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

  puchFunction(Widget widget) {
    navKey.currentState.push(MaterialPageRoute(
      builder: (context) {
        return widget;
      },
    ));
    puchNamedRoute(String rotueName) {
      navKey.currentState.pushNamed(rotueName);
    }
  }
}
