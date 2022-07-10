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

part 'course_view_model.g.dart';

class CourseViewModel = _CourseViewModel with _$CourseViewModel;

abstract class _CourseViewModel with Store {
  var _id = "";
  var _navigator = instance<NavigationService>();
  var _network = instance<Network>();

  Map<String,dynamic>? content = null;

  @observable
  DataState contentState = DataState.NORMAL;

  @action
  goBack(){
    _navigator.pop();
  }

  @action
  onInit(String id){
    _id = id;
    fetchCourseContent(_id);
  }

  void fetchCourseContent(String id) async {
    contentState = DataState.LOADING;
    var r = await _network.courseContent(id);
    var response = r.data;
    if(response==null){
      contentState = DataState.FAILED;
      return;
    }
    processContent(response);
    if(content==null){
      contentState = DataState.FAILED;
      return;
    }
    contentState = DataState.SUCCESS;
  }

  void processContent(CourseContentResponse? response) {
    if(response==null){
      return;
    }
    var data = Enc().de(response.content);
    content = json.decode(data);
  }
}
//flutter pub run build_runner build