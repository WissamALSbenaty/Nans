
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nans/src/Data/models/option_model.dart';
import 'package:nans/src/Data/models/validation_model.dart';

part 'form_field_model.freezed.dart';
part 'form_field_model.g.dart';

@Freezed(unionKey: 'type')
class FormFieldModel with _$FormFieldModel {


  @FreezedUnionValue("TEXT")
  const factory FormFieldModel.textFieldModel({
    required ValidationModel validation,
    required String key,
  }) = TextFieldModel;



  @FreezedUnionValue("NUMBER")
  const factory FormFieldModel.numericFieldModel({
    required ValidationModel validation,
    required String key
  }) = NumericFieldModel;

  @FreezedUnionValue("SELECT")
  const factory FormFieldModel.selectFieldModel({
    required List<OptionModel> options,
    required ValidationModel validation,
    required String key
  })=SelectFieldModel;

  @FreezedUnionValue("RADIO")
  const factory FormFieldModel.radioFieldModel({
    required List<OptionModel> options,
    required ValidationModel validation,
    required String key
  })=RadioFieldModel;

  @FreezedUnionValue("CHECKBOX")
  const factory FormFieldModel.checkboxFieldModel({
    required List<OptionModel> options,
    required ValidationModel validation,
    required String key
  })=CheckboxFieldModel;

  @FreezedUnionValue("DATE_PICKER")
  const factory FormFieldModel.datePickerFieldModel({
    required ValidationModel validation,
    required String key
    })=DatePickerFieldModel;

 @FreezedUnionValue('UPLOAD')
  const factory FormFieldModel.filePickerFieldModel({
     required ValidationModel validation,
    required String key
    }) = FilePickerFieldModel;


  factory FormFieldModel.fromJson(Map<String, dynamic> json) => _$FormFieldModelFromJson(json);
}