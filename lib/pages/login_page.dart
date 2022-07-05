import 'package:algogence_education/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../constants.dart';
import '../view_models/login_provider.dart';

final vm = LoginViewModel();

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Container(
            decoration: BoxDecorationType1(context),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Container(
                width: 400,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    HeaderType1(
                        context,
                        Constants.login
                    ),
                    SpaceY24(),
                    TextFieldType1(
                        context,
                        Constants.email_id_label,
                        Constants.email_id_label,
                            (value)=>{
                              vm.onEmailIdChange(value)
                        }
                    ),
                    SpaceY12(),
                    TextFieldType1(
                        context,
                        Constants.password_label,
                        Constants.password_label,
                            (value)=>{
                              vm.onPasswordChange(value)
                        }
                    ),
                    SpaceY12(),
                    Observer(
                      builder: (_) => ButtonType1(
                          context,
                          Constants.login,
                              (){
                                  vm.onLoginClick();
                              },enabled: vm.valid,
                          state: vm.loginState
                      ),
                    ),
                  ],
                )
              ),
            ),
          ),
        ),
      ),
    );
  }
}