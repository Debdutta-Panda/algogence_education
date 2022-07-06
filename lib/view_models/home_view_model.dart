import 'package:algogence_education/app_settings.dart';
import 'package:algogence_education/extensions.dart';
import 'package:algogence_education/navigation.dart';
import 'package:algogence_education/navigation_service.dart';
import 'package:mobx/mobx.dart';

import '../di.dart';
import '../routes.dart';

// Include generated file
part 'home_view_model.g.dart';

// This is the class used by rest of your codebase
class HomeViewModel = _HomeViewModel with _$HomeViewModel;

// The store-class
abstract class _HomeViewModel with Store {
  @observable
  var currentMenu = 'home';

  @action
  onMenuSelected(String menu){
    if(currentMenu==menu){
      return;
    }
    currentMenu = menu;
    Navigation.homeNav.currentState?.pushReplacementNamed(Routes.home+"/"+menu);
  }
}