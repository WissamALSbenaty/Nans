/*
import 'package:flutter/material.dart';
import 'package:nans/src/Data/models/form_field_model.dart';
import 'package:nans/src/core/presentation/validators/is_email_validator.dart';
import 'package:nans/src/core/presentation/validators/is_not_empty_validator.dart';
import 'package:nans/src/core/util/enums.dart';
import 'package:nans/src/features/dynamic_forms/controllers/dynamic_form_controller.dart';
import 'package:nans/src/features/dynamic_forms/presentation/widgets/fields/dynamic_text_field.dart';

class EmailField extends StatelessWidget {
  final EmailFieldModel model;
  final DynamicFormController formController;
  final int fieldIndex;
  final String title;

  const EmailField({Key? key,required this.model, required this.title, required this.formController, required this.fieldIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DynamicTextField(title: title,
        validator: IsNotEmptyValidator(nextValidator: IsEmailValidator()),
        textInputType: TextInputType.emailAddress,
        fieldPriority: model.validation.isRequired? TextFieldPriority.required:TextFieldPriority.optional,
        formController:formController ,
        fieldIndex: fieldIndex,
    );
  }

}
*/
