// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'licenced_company_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LicencedCompanyModel _$LicencedCompanyModelFromJson(
        Map<String, dynamic> json) =>
    LicencedCompanyModel(
      id: json['id'] as String,
      description: json['description'] as String,
      name: json['name'] as String,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$LicencedCompanyModelToJson(
        LicencedCompanyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
    };
