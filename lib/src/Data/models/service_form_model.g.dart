// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_form_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceFormModel _$ServiceFormModelFromJson(Map<String, dynamic> json) =>
    ServiceFormModel(
      form: (json['form'] as List<dynamic>)
          .map((e) => (e as Map<String, dynamic>).map(
                (k, e) => MapEntry(
                    k, FormFieldModel.fromJson(e as Map<String, dynamic>)),
              ))
          .toList(),
    );

Map<String, dynamic> _$ServiceFormModelToJson(ServiceFormModel instance) =>
    <String, dynamic>{
      'form': instance.form,
    };
