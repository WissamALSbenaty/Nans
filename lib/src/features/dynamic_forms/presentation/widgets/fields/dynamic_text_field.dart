import 'package:flutter/material.dart';
import 'package:nans/src/Data/models/form_field_model.dart';
import 'package:nans/src/core/presentation/validators/custom_validator.dart';
import 'package:nans/src/core/presentation/widgets/text_fields/custom_text_field.dart';
import 'package:nans/src/core/util/enums.dart';
import 'package:nans/src/features/dynamic_forms/controllers/dynamic_form_controller.dart';

class DynamicTextField extends StatelessWidget {
  final FormFieldModel form;
  final TextInputType? textInputType;
  final CustomValidator? validator;

  final int fieldIndex;
  final DynamicFormController formController;

  const DynamicTextField({Key? key, required this.form, this.textInputType,
    required this.validator,   required this.fieldIndex, required this.formController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      title: form.key,
      onChangedFunction: (value)=>formController.changeValue(form.key, value),
      validator: validator,
      focusNode: formController.focusNodes[fieldIndex],
      onSubmit:(_)=> fieldIndex==formController.currentValues.length-1? formController.submitForm():formController.focusNodes[fieldIndex+1].requestFocus(),
      initialValue: formController.currentValues[fieldIndex],
      fieldPriority: form.validation.isRequired? TextFieldPriority.required:TextFieldPriority.optional,
      textInputType: textInputType,
    );
  }
}
