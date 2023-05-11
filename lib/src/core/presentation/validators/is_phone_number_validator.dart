


import 'package:nans/src/Data/Errors/core_errors.dart';
import 'package:nans/src/core/presentation/validators/custom_validator.dart';

class IsPhoneNumberValidator extends CustomValidator{

  IsPhoneNumberValidator({super.nextValidator});

  @override
  String? validate({required String fieldName,required String? toCheckString}) {
    if( toCheckString==null|| ! RegExp(r'^\d{10}$').hasMatch(toCheckString)) {
      return NotPhoneNumberError(fieldName:fieldName).errorMessage;
    }
    return null;
  }

}