// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DepartmentDetailsModel _$$_DepartmentDetailsModelFromJson(
        Map<String, dynamic> json) =>
    _$_DepartmentDetailsModel(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      imagePath: json['image'] as String?,
    );

Map<String, dynamic> _$$_DepartmentDetailsModelToJson(
        _$_DepartmentDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'image': instance.imagePath,
    };
