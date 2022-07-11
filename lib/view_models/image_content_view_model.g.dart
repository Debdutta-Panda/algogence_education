// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_content_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ImageContentViewModel on _ImageContentViewModel, Store {
  late final _$contentStateAtom =
      Atom(name: '_ImageContentViewModel.contentState', context: context);

  @override
  DataState get contentState {
    _$contentStateAtom.reportRead();
    return super.contentState;
  }

  @override
  set contentState(DataState value) {
    _$contentStateAtom.reportWrite(value, super.contentState, () {
      super.contentState = value;
    });
  }

  late final _$_ImageContentViewModelActionController =
      ActionController(name: '_ImageContentViewModel', context: context);

  @override
  dynamic onInit(String id) {
    final _$actionInfo = _$_ImageContentViewModelActionController.startAction(
        name: '_ImageContentViewModel.onInit');
    try {
      return super.onInit(id);
    } finally {
      _$_ImageContentViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
contentState: ${contentState}
    ''';
  }
}
