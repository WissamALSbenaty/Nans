// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_form_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DynamicFormController on DynamicFormControllerBase, Store {
  late final _$valuesAtom =
      Atom(name: 'DynamicFormControllerBase.values', context: context);

  @override
  ObservableMap<String, dynamic> get values {
    _$valuesAtom.reportRead();
    return super.values;
  }

  @override
  set values(ObservableMap<String, dynamic> value) {
    _$valuesAtom.reportWrite(value, super.values, () {
      super.values = value;
    });
  }

  late final _$filesAtom =
      Atom(name: 'DynamicFormControllerBase.files', context: context);

  @override
  ObservableMap<String, String?> get files {
    _$filesAtom.reportRead();
    return super.files;
  }

  @override
  set files(ObservableMap<String, String?> value) {
    _$filesAtom.reportWrite(value, super.files, () {
      super.files = value;
    });
  }

  late final _$DynamicFormControllerBaseActionController =
      ActionController(name: 'DynamicFormControllerBase', context: context);

  @override
  void changeFile(String key, String? value) {
    final _$actionInfo = _$DynamicFormControllerBaseActionController
        .startAction(name: 'DynamicFormControllerBase.changeFile');
    try {
      return super.changeFile(key, value);
    } finally {
      _$DynamicFormControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeValue(String key, dynamic value) {
    final _$actionInfo = _$DynamicFormControllerBaseActionController
        .startAction(name: 'DynamicFormControllerBase.changeValue');
    try {
      return super.changeValue(key, value);
    } finally {
      _$DynamicFormControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addValue(String key, String value) {
    final _$actionInfo = _$DynamicFormControllerBaseActionController
        .startAction(name: 'DynamicFormControllerBase.addValue');
    try {
      return super.addValue(key, value);
    } finally {
      _$DynamicFormControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeValue(String key, String value) {
    final _$actionInfo = _$DynamicFormControllerBaseActionController
        .startAction(name: 'DynamicFormControllerBase.removeValue');
    try {
      return super.removeValue(key, value);
    } finally {
      _$DynamicFormControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool canSubmitDynamicForm() {
    final _$actionInfo = _$DynamicFormControllerBaseActionController
        .startAction(name: 'DynamicFormControllerBase.canSubmitDynamicForm');
    try {
      return super.canSubmitDynamicForm();
    } finally {
      _$DynamicFormControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
values: ${values},
files: ${files}
    ''';
  }
}
