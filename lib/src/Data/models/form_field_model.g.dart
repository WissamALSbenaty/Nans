// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_field_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TextFieldModel _$$TextFieldModelFromJson(Map<String, dynamic> json) =>
    _$TextFieldModel(
      validation:
          ValidationModel.fromJson(json['validation'] as Map<String, dynamic>),
      key: json['key'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$TextFieldModelToJson(_$TextFieldModel instance) =>
    <String, dynamic>{
      'validation': instance.validation,
      'key': instance.key,
      'type': instance.$type,
    };

_$NumericFieldModel _$$NumericFieldModelFromJson(Map<String, dynamic> json) =>
    _$NumericFieldModel(
      validation:
          ValidationModel.fromJson(json['validation'] as Map<String, dynamic>),
      key: json['key'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$NumericFieldModelToJson(_$NumericFieldModel instance) =>
    <String, dynamic>{
      'validation': instance.validation,
      'key': instance.key,
      'type': instance.$type,
    };

_$SelectFieldModel _$$SelectFieldModelFromJson(Map<String, dynamic> json) =>
    _$SelectFieldModel(
      options: (json['options'] as List<dynamic>)
          .map((e) => OptionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      validation:
          ValidationModel.fromJson(json['validation'] as Map<String, dynamic>),
      key: json['key'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$SelectFieldModelToJson(_$SelectFieldModel instance) =>
    <String, dynamic>{
      'options': instance.options,
      'validation': instance.validation,
      'key': instance.key,
      'type': instance.$type,
    };

_$RadioFieldModel _$$RadioFieldModelFromJson(Map<String, dynamic> json) =>
    _$RadioFieldModel(
      options: (json['options'] as List<dynamic>)
          .map((e) => OptionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      validation:
          ValidationModel.fromJson(json['validation'] as Map<String, dynamic>),
      key: json['key'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$RadioFieldModelToJson(_$RadioFieldModel instance) =>
    <String, dynamic>{
      'options': instance.options,
      'validation': instance.validation,
      'key': instance.key,
      'type': instance.$type,
    };

_$CheckboxFieldModel _$$CheckboxFieldModelFromJson(Map<String, dynamic> json) =>
    _$CheckboxFieldModel(
      options: (json['options'] as List<dynamic>)
          .map((e) => OptionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      validation:
          ValidationModel.fromJson(json['validation'] as Map<String, dynamic>),
      key: json['key'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$CheckboxFieldModelToJson(
        _$CheckboxFieldModel instance) =>
    <String, dynamic>{
      'options': instance.options,
      'validation': instance.validation,
      'key': instance.key,
      'type': instance.$type,
    };

_$DatePickerFieldModel _$$DatePickerFieldModelFromJson(
        Map<String, dynamic> json) =>
    _$DatePickerFieldModel(
      validation:
          ValidationModel.fromJson(json['validation'] as Map<String, dynamic>),
      key: json['key'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$DatePickerFieldModelToJson(
        _$DatePickerFieldModel instance) =>
    <String, dynamic>{
      'validation': instance.validation,
      'key': instance.key,
      'type': instance.$type,
    };

_$FilePickerFieldModel _$$FilePickerFieldModelFromJson(
        Map<String, dynamic> json) =>
    _$FilePickerFieldModel(
      validation:
          ValidationModel.fromJson(json['validation'] as Map<String, dynamic>),
      key: json['key'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$FilePickerFieldModelToJson(
        _$FilePickerFieldModel instance) =>
    <String, dynamic>{
      'validation': instance.validation,
      'key': instance.key,
      'type': instance.$type,
    };
