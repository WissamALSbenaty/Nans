// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsModel _$$_NewsModelFromJson(Map<String, dynamic> json) => _$_NewsModel(
      id: json['id'] as String,
      title: json['title'] as String,
      imagePath: json['image'] as String?,
      creationDate: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_NewsModelToJson(_$_NewsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.imagePath,
      'createdAt': instance.creationDate.toIso8601String(),
    };
