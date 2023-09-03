// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department_details_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DepartmentDetailsController on DepartmentDetailsControllerBase, Store {
  late final _$departmentServicesAtom = Atom(
      name: 'DepartmentDetailsControllerBase.departmentServices',
      context: context);

  @override
  ObservableList<ServiceModel> get departmentServices {
    _$departmentServicesAtom.reportRead();
    return super.departmentServices;
  }

  @override
  set departmentServices(ObservableList<ServiceModel> value) {
    _$departmentServicesAtom.reportWrite(value, super.departmentServices, () {
      super.departmentServices = value;
    });
  }

  @override
  String toString() {
    return '''
departmentServices: ${departmentServices}
    ''';
  }
}
