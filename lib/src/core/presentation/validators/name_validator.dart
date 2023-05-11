


import 'package:nans/src/Data/Errors/core_errors.dart';
import 'package:nans/src/core/presentation/validators/custom_validator.dart';

class NameValidator extends CustomValidator{

  NameValidator({super.nextValidator});

  @override
  String? validate({required String fieldName,required String? toCheckString}) {
    if(toCheckString==null||  !RegExp(r'^[a-zA-Z]*$').hasMatch(toCheckString)) {
      return NotNameError(fieldName:fieldName).errorMessage;
    }
    return null;
  }

}