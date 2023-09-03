import 'package:freezed_annotation/freezed_annotation.dart';
part 'licenced_company_model.g.dart';

@JsonSerializable()
class LicencedCompanyModel {

  final String id,name,description;
  final String?image;

  LicencedCompanyModel({
    required this.id,
    required this.description,
    required this.name,
             this.image,
    });

  factory LicencedCompanyModel.fromJson( Map<String,dynamic> data)=>_$LicencedCompanyModelFromJson(data);
}