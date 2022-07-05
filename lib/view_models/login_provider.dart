import 'package:algogence_education/extensions.dart';
import 'package:algogence_education/network.dart';
import 'package:algogence_education/widgets.dart';
import 'package:mobx/mobx.dart';

import '../di.dart';

// Include generated file
part 'login_provider.g.dart';

// This is the class used by rest of your codebase
class LoginViewModel = _LoginViewModel with _$LoginViewModel;

// The store-class
abstract class _LoginViewModel with Store {
  var network = instance<Network>();
  @observable
  var loginState = ButtonState.NORMAL;

  @observable
  bool emailValid = false;

  @observable
  bool passwordValid = false;

  @observable
  String email = "";

  @observable
  String password = "";

  @action
  void onEmailIdChange(String _email) {
    email = _email;
    emailValid = email.isValidEmail;
  }

  @action
  void onPasswordChange(String _password) {
    password = _password;
    passwordValid = password.isValidPassword;
  }

  @action
  void onLoginClick() {
    login();
  }

  @computed
  bool get valid => emailValid && passwordValid;

  void login() async {
    loginState = ButtonState.LOADING;
    var response = await network.login(email,password);
    print(response.data?.userId);
  }
}