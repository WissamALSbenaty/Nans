// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ValidationModel _$ValidationModelFromJson(Map<String, dynamic> json) =>
    ValidationModel(
      isRequired: json['required'] as bool,
      minimumTextLength: json['minLength'] as int?,
      maximumTextLength: json['maxLength'] as int?,
      isEmail: json['isEmail'] as bool?,
    );

Map<String, dynamic> _$ValidationModelToJson(ValidationModel instance) =>
    <String, dynamic>{
      'required': instance.isRequired,
      'minLength': instance.minimumTextLength,
      'maxLength': instance.maximumTextLength,
      'isEmail': instance.isEmail,
    };
