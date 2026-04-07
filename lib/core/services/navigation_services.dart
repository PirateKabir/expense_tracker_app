import 'package:flutter/material.dart';

class NavigationServices {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future? navigateTo(String routeName) {
    return navigatorKey.currentState?.pushNamed(routeName);
  }

  void goback() {
    navigatorKey.currentState?.pop();
  }
}

final NavigationServices navigationServices = NavigationServices();
