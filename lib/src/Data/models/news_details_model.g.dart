// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsDetailsModel _$$_NewsDetailsModelFromJson(Map<String, dynamic> json) =>
    _$_NewsDetailsModel(
      description: json['description'] as String,
      id: json['id'] as String,
      title: json['title'] as String,
      imagePath: json['image'] as String?,
      creationDate: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_NewsDetailsModelToJson(_$_NewsDetailsModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'id': instance.id,
      'title': instance.title,
      'image': instance.imagePath,
      'createdAt': instance.creationDate.toIso8601String(),
    };
