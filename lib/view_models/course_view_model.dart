import 'package:algogence_education/app_settings.dart';
import 'package:algogence_education/extensions.dart';
import 'package:algogence_education/navigation.dart';
import 'package:algogence_education/navigation_service.dart';
import 'package:mobx/mobx.dart';

import '../di.dart';
import '../routes.dart';

part 'course_view_model.g.dart';

class CourseViewModel = _CourseViewModel with _$CourseViewModel;


abstract class _CourseViewModel with Store {
  var _navigator = instance<NavigationService>();
  @action
  goBack(){
    _navigator.pop();
  }
}