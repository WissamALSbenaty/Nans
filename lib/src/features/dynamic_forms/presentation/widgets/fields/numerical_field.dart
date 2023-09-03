import 'package:flutter/material.dart';
import 'package:nans/src/Data/models/form_field_model.dart';
import 'package:nans/src/core/presentation/validators/is_between_range_validator.dart';
import 'package:nans/src/core/presentation/validators/is_number_validator.dart';
import 'package:nans/src/features/dynamic_forms/controllers/dynamic_form_controller.dart';
import 'package:nans/src/features/dynamic_forms/presentation/widgets/fields/dynamic_text_field.dart';

class NumericField extends StatelessWidget {
  final NumericFieldModel model;
  final DynamicFormController formController;
  final int fieldIndex;
  const NumericField({Key? key,required this.model, required this.formController, required this.fieldIndex,}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return DynamicTextField(
      form: model,
        validator:IsNumberValidator(
            nextValidator:IsBetweenRangeValidator(
              maximumNumber: model.validation.maximumTextLength,
                minimumNumber: model.validation.minimumTextLength,
                )
        ),
      formController: formController,
      fieldIndex:fieldIndex,
      textInputType: TextInputType.number,
    );
  }

}
