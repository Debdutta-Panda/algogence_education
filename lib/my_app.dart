import 'package:algogence_education/routeGenerator.dart';
import 'package:algogence_education/routes.dart';
import 'package:algogence_education/theme.dart';
import 'package:flutter/material.dart';

import 'app_scroll_behavior.dart';
import 'constants.dart';
import 'di.dart';
import 'navigation_service.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: instance<NavigationService>().navigatorKey,
      scrollBehavior: AppScrollBehavior(),
      debugShowCheckedModeBanner: false,
      title: Constants.app_name,
      theme: AppTheme.darkTheme,
      initialRoute: Routes.splash,
      onGenerateRoute: RouteGenerator.getRoute,
      themeMode: ThemeMode.light,
    );
  }
}