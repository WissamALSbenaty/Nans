
import 'package:freezed_annotation/freezed_annotation.dart';

part 'department_details_model.freezed.dart';
part 'department_details_model.g.dart';

@freezed
class DepartmentDetailsModel with _$DepartmentDetailsModel{

  factory DepartmentDetailsModel({
    required String id,
    required String title,
    required String description,
    @JsonKey(name: 'image') String? imagePath,
  })=_DepartmentDetailsModel;

  factory DepartmentDetailsModel.fromJson( Map<String,dynamic> data)=>_$DepartmentDetailsModelFromJson(data);


}