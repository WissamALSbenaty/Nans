// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_page_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MainPageController on MainPageControllerBase, Store {
  late final _$servicesAtom =
      Atom(name: 'MainPageControllerBase.services', context: context);

  @override
  ObservableList<ServiceModel> get services {
    _$servicesAtom.reportRead();
    return super.services;
  }

  @override
  set services(ObservableList<ServiceModel> value) {
    _$servicesAtom.reportWrite(value, super.services, () {
      super.services = value;
    });
  }

  late final _$newsAtom =
      Atom(name: 'MainPageControllerBase.news', context: context);

  @override
  ObservableList<NewsModel> get news {
    _$newsAtom.reportRead();
    return super.news;
  }

  @override
  set news(ObservableList<NewsModel> value) {
    _$newsAtom.reportWrite(value, super.news, () {
      super.news = value;
    });
  }

  late final _$departmentsAtom =
      Atom(name: 'MainPageControllerBase.departments', context: context);

  @override
  ObservableList<DepartmentModel> get departments {
    _$departmentsAtom.reportRead();
    return super.departments;
  }

  @override
  set departments(ObservableList<DepartmentModel> value) {
    _$departmentsAtom.reportWrite(value, super.departments, () {
      super.departments = value;
    });
  }

  late final _$licencedCompaniesAtom =
      Atom(name: 'MainPageControllerBase.licencedCompanies', context: context);

  @override
  ObservableList<LicencedCompanyModel> get licencedCompanies {
    _$licencedCompaniesAtom.reportRead();
    return super.licencedCompanies;
  }

  @override
  set licencedCompanies(ObservableList<LicencedCompanyModel> value) {
    _$licencedCompaniesAtom.reportWrite(value, super.licencedCompanies, () {
      super.licencedCompanies = value;
    });
  }

  late final _$MainPageControllerBaseActionController =
      ActionController(name: 'MainPageControllerBase', context: context);

  @override
  void loadData() {
    final _$actionInfo = _$MainPageControllerBaseActionController.startAction(
        name: 'MainPageControllerBase.loadData');
    try {
      return super.loadData();
    } finally {
      _$MainPageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
services: ${services},
news: ${news},
departments: ${departments},
licencedCompanies: ${licencedCompanies}
    ''';
  }
}
