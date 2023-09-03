import 'package:freezed_annotation/freezed_annotation.dart';
part 'validation_model.g.dart';

@JsonSerializable()
class ValidationModel {

  @JsonKey(name: 'required')
  final bool isRequired;

  @JsonKey(name: 'minLength')
  final int? minimumTextLength;

  @JsonKey(name: 'maxLength')
  final int? maximumTextLength;

  final bool? isEmail;

  ValidationModel({
    required this.isRequired,
             this.minimumTextLength,
             this.maximumTextLength,
             this.isEmail,
    });

  factory ValidationModel.fromJson( Map<String,dynamic> data)=>_$ValidationModelFromJson(data);


}