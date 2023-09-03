// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_details_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RequestDetailsController on RequestDetailsControllerBase, Store {
  late final _$RequestDetailsControllerBaseActionController =
      ActionController(name: 'RequestDetailsControllerBase', context: context);

  @override
  void cancelRequest() {
    final _$actionInfo = _$RequestDetailsControllerBaseActionController
        .startAction(name: 'RequestDetailsControllerBase.cancelRequest');
    try {
      return super.cancelRequest();
    } finally {
      _$RequestDetailsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void rateService({required int vote, required String comment}) {
    final _$actionInfo = _$RequestDetailsControllerBaseActionController
        .startAction(name: 'RequestDetailsControllerBase.rateService');
    try {
      return super.rateService(vote: vote, comment: comment);
    } finally {
      _$RequestDetailsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
