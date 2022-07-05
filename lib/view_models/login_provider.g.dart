// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_provider.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginViewModel on _LoginViewModel, Store {
  Computed<bool>? _$validComputed;

  @override
  bool get valid => (_$validComputed ??=
          Computed<bool>(() => super.valid, name: '_LoginViewModel.valid'))
      .value;

  late final _$emailValidAtom =
      Atom(name: '_LoginViewModel.emailValid', context: context);

  @override
  bool get emailValid {
    _$emailValidAtom.reportRead();
    return super.emailValid;
  }

  @override
  set emailValid(bool value) {
    _$emailValidAtom.reportWrite(value, super.emailValid, () {
      super.emailValid = value;
    });
  }

  late final _$passwordValidAtom =
      Atom(name: '_LoginViewModel.passwordValid', context: context);

  @override
  bool get passwordValid {
    _$passwordValidAtom.reportRead();
    return super.passwordValid;
  }

  @override
  set passwordValid(bool value) {
    _$passwordValidAtom.reportWrite(value, super.passwordValid, () {
      super.passwordValid = value;
    });
  }

  late final _$emailAtom =
      Atom(name: '_LoginViewModel.email', context: context);

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: '_LoginViewModel.password', context: context);

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$_LoginViewModelActionController =
      ActionController(name: '_LoginViewModel', context: context);

  @override
  void onEmailIdChange(String _email) {
    final _$actionInfo = _$_LoginViewModelActionController.startAction(
        name: '_LoginViewModel.onEmailIdChange');
    try {
      return super.onEmailIdChange(_email);
    } finally {
      _$_LoginViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onPasswordChange(String _password) {
    final _$actionInfo = _$_LoginViewModelActionController.startAction(
        name: '_LoginViewModel.onPasswordChange');
    try {
      return super.onPasswordChange(_password);
    } finally {
      _$_LoginViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
emailValid: ${emailValid},
passwordValid: ${passwordValid},
email: ${email},
password: ${password},
valid: ${valid}
    ''';
  }
}
