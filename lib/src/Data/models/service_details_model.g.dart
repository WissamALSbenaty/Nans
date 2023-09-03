// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServiceDetailsModel _$$_ServiceDetailsModelFromJson(
        Map<String, dynamic> json) =>
    _$_ServiceDetailsModel(
      id: json['id'] as String,
      title: json['title'] as String,
      department:
          DepartmentModel.fromJson(json['department'] as Map<String, dynamic>),
      image: json['image'] as String?,
      description: json['description'] as String,
      comments: (json['votes'] as List<dynamic>)
          .map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      serviceForm: json['serviceForm'] == null
          ? null
          : ServiceFormModel.fromJson(
              json['serviceForm'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ServiceDetailsModelToJson(
        _$_ServiceDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'department': instance.department,
      'image': instance.image,
      'description': instance.description,
      'votes': instance.comments,
      'serviceForm': instance.serviceForm,
    };
