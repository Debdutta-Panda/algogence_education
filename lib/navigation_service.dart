import 'package:flutter/cupertino.dart';

class NavigationServiceImpl extends NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  Future<dynamic>? navigateTo(String routeName,{dynamic argument = null}) {
    return navigatorKey.currentState?.pushNamed(routeName,arguments: argument);
  }

  @override
  void pop() {
    navigatorKey.currentState?.pop();
  }

  @override
  Future? popNavigateTo(String routeName, {argument = null}) {
    return navigatorKey.currentState?.popAndPushNamed(routeName,arguments: argument);
  }
}

abstract class NavigationService {
  get navigatorKey;
  Future<dynamic>? popNavigateTo(String routeName,{dynamic argument = null});
  Future<dynamic>? navigateTo(String routeName,{dynamic argument = null});

  void pop();
}