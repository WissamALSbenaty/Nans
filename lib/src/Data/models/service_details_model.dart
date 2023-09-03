
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nans/src/Data/models/comment_model.dart';
import 'package:nans/src/Data/models/department_model.dart';
import 'package:nans/src/Data/models/form_field_model.dart';

import 'service_form_model.dart';

part 'service_details_model.freezed.dart';
part 'service_details_model.g.dart';

@freezed
class ServiceDetailsModel with _$ServiceDetailsModel{

  const ServiceDetailsModel._();
  factory ServiceDetailsModel({
    required String id,
    required String title,
    required DepartmentModel department,
    String? image,
    required String description,
    @JsonKey(name: 'votes') required List<CommentModel> comments,
    ServiceFormModel? serviceForm,
  })=_ServiceDetailsModel;

  factory ServiceDetailsModel.fromJson( Map<String,dynamic> data)=>_$ServiceDetailsModelFromJson(data);


  List<FormFieldModel> get allForms=>serviceForm?.form.fold(
      [], (previousValue, element) => previousValue?..add(element.values.first))??[];

}