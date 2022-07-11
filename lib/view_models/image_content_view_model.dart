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

part 'image_content_view_model.g.dart';

class ImageContentViewModel = _ImageContentViewModel with _$ImageContentViewModel;

abstract class _ImageContentViewModel with Store {
  var _network = instance<Network>();
  String _id = "";
  String url = "";
  @observable
  DataState contentState = DataState.NORMAL;

  @action
  onInit(String id){
    _id = id;
    if(id.startsWith('asset_')){
      fetchUrl();
    }
    else if(id.startsWith("https://")){
      url = id;
      contentState = DataState.SUCCESS;
    }
  }

  fetchUrl() async{
    print('loading...');
    contentState = DataState.LOADING;
    var r = await _network.asset(_id);
    var response = r.data;
    if(response==null){
      contentState = DataState.FAILED;
      return;
    }
    if(!response.success){
      contentState = DataState.FAILED;
      return;
    }
    url = response.url;
    contentState = DataState.SUCCESS;
  }
}
//flutter pub run build_runner build