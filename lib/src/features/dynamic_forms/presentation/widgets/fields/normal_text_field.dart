import 'package:flutter/material.dart';
import 'package:nans/src/Data/models/form_field_model.dart';
import 'package:nans/src/core/presentation/validators/is_email_validator.dart';
import 'package:nans/src/core/presentation/validators/is_not_empty_validator.dart';
import 'package:nans/src/features/dynamic_forms/controllers/dynamic_form_controller.dart';
import 'package:nans/src/features/dynamic_forms/presentation/widgets/fields/dynamic_text_field.dart';

class NormalTextField extends StatelessWidget {
  final int fieldIndex;
  final DynamicFormController formController;
  final TextFieldModel form;

  const NormalTextField({Key? key, required this.fieldIndex, required this.formController, required this.form}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DynamicTextField(
      form: form,
      fieldIndex: fieldIndex,formController: formController,
      textInputType: (form.validation.isEmail?? false ) ? TextInputType.emailAddress:null,
      validator:(form.validation.isEmail??false) ? IsEmailValidator():IsNotEmptyValidator(),
    );
  }
}
