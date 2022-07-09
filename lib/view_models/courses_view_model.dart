import 'package:algogence_education/app_settings.dart';
import 'package:algogence_education/extensions.dart';
import 'package:algogence_education/navigation.dart';
import 'package:algogence_education/navigation_service.dart';
import 'package:mobx/mobx.dart';

import '../di.dart';
import '../routes.dart';

// Include generated file
part 'courses_view_model.g.dart';

// This is the class used by rest of your codebase
class CoursesViewModel = _CoursesViewModel with _$CoursesViewModel;

// The store-class
abstract class _CoursesViewModel with Store {
  NavigationService _navigator = instance<NavigationService>();
  @action
  gotoDetails(String id){
    _navigator.navigateTo(Routes.course,argument: id);
  }
}