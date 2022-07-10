import 'dart:convert';

import 'package:algogence_education/app_settings.dart';
import 'package:algogence_education/en_converter.dart';
import 'package:algogence_education/extensions.dart';
import 'package:algogence_education/models/course_content_response.dart';
import 'package:algogence_education/navigation.dart';
import 'package:algogence_education/navigation_service.dart';
import 'package:algogence_education/network.dart';
import 'package:mobx/mobx.dart';

import '../di.dart';
import '../models/data_state.dart';
import '../routes.dart';

part 'course_content_view_model.g.dart';

class CourseContentViewModel = _CourseContentViewModel with _$CourseContentViewModel;

abstract class _CourseContentViewModel with Store {
  Map<String,dynamic>? _content = null;
  @action
  onInit(Map<String,dynamic>? content){
    _content = content;
  }
}
//flutter pub run build_runner build