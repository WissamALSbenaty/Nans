import 'package:freezed_annotation/freezed_annotation.dart';
part 'option_model.g.dart';

@JsonSerializable()
class OptionModel {

  final String key;
  final String value;

  OptionModel({
    required this.key,
    required this.value,
    });

  factory OptionModel.fromJson( Map<String,dynamic> data)=>_$OptionModelFromJson(data);

}