import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nans/src/Data/models/form_field_model.dart';
part 'service_form_model.g.dart';

@JsonSerializable()
class ServiceFormModel {

  final List<Map<String,FormFieldModel>> form;

  ServiceFormModel({
    required this.form,
    });

  factory ServiceFormModel.fromJson( Map<String,dynamic> data)=>_$ServiceFormModelFromJson(data);


}