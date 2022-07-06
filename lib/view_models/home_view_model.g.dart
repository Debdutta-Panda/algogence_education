// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeViewModel on _HomeViewModel, Store {
  late final _$currentMenuAtom =
      Atom(name: '_HomeViewModel.currentMenu', context: context);

  @override
  String get currentMenu {
    _$currentMenuAtom.reportRead();
    return super.currentMenu;
  }

  @override
  set currentMenu(String value) {
    _$currentMenuAtom.reportWrite(value, super.currentMenu, () {
      super.currentMenu = value;
    });
  }

  late final _$_HomeViewModelActionController =
      ActionController(name: '_HomeViewModel', context: context);

  @override
  dynamic onMenuSelected(String menu) {
    final _$actionInfo = _$_HomeViewModelActionController.startAction(
        name: '_HomeViewModel.onMenuSelected');
    try {
      return super.onMenuSelected(menu);
    } finally {
      _$_HomeViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentMenu: ${currentMenu}
    ''';
  }
}
