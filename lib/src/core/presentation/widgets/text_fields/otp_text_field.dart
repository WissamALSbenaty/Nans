import 'package:nans/src/core/controllers/custom_form_mixin.dart';
import 'package:nans/src/core/presentation/validators/is_not_empty_validator.dart';
import 'package:nans/src/core/presentation/widgets/text_fields/form_controller_text_field.dart';
import 'package:flutter/material.dart';

class OtpTextField extends StatelessWidget {

  final int fieldIndex;
  final CustomFormMixin formController;
  const OtpTextField({Key? key, required this.fieldIndex, required this.formController, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormControllerTextField(title: 'Verify Mobile Number',textInputType: TextInputType.number,
      validator: IsNotEmptyValidator(),
      fieldIndex: fieldIndex,formController: formController,
    );
  }
}
