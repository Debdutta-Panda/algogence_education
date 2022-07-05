import 'package:algogence_education/pages/home_page.dart';
import 'package:algogence_education/routes.dart';
import 'package:algogence_education/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'pages/login_page.dart';

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case Routes.login:
        return PageTransition(
            child: LoginPage(),
            type: PageTransitionType.fade,
          duration: Duration(milliseconds: 500)
        );
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Text("Undefined route"),
        ));
  }
}