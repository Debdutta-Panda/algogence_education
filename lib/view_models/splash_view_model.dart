import 'package:algogence_education/app_settings.dart';
import 'package:algogence_education/extensions.dart';
import 'package:algogence_education/navigation_service.dart';
import 'package:mobx/mobx.dart';

import '../di.dart';
import '../routes.dart';

// Include generated file
part 'splash_view_model.g.dart';

// This is the class used by rest of your codebase
class SplashViewModel = _SplashViewModel with _$SplashViewModel;

// The store-class
abstract class _SplashViewModel with Store {
  AppSettings appSettings = instance<AppSettings>();
  NavigationService navigationService = instance<NavigationService>();
  @action
  void onInit(){
    splashAction();
  }

  void splashAction() async {
    await Future.delayed(Duration(seconds: 3));
    /*var user_id = appSettings.userId;
    if(user_id==null || user_id == ""){
      goToLoginPage();
    }
    else{
      goToHomePage();
    }*/
    goToHomePage();
  }

  void goToLoginPage() {
    navigationService.popNavigateTo(Routes.login);
  }

  void goToHomePage() {
    navigationService.popNavigateTo(Routes.home);
  }
}