import 'package:flutter/cupertino.dart';

class NavigationServiceImpl extends NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  Future<dynamic>? navigateTo(String routeName) {
    return navigatorKey.currentState?.popAndPushNamed(routeName);
  }
}

abstract class NavigationService {
  get navigatorKey;
  Future<dynamic>? navigateTo(String routeName);
}