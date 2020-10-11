import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName,
      {Map<String, String> queryParameters}) {
    var route;
    if (queryParameters != null) {
      route = Uri(path: routeName, queryParameters: queryParameters).toString();
    } else {
      route = Uri(path: routeName).toFilePath();
    }
    return navigationKey.currentState.pushNamed(route);
  }

  void goBack() => navigationKey.currentState.pop();
}
