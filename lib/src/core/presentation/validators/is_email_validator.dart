import 'package:nans/src/Data/Errors/core_errors.dart';
import 'package:nans/src/core/presentation/validators/custom_validator.dart';

class IsEmailValidator extends CustomValidator{

  IsEmailValidator({ super.nextValidator});

  @override
  String? validate({required String fieldName,required String? toCheckString}) {
    if(toCheckString==null ||  !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(toCheckString))  {
      return NotEmailError(fieldName:fieldName,).errorMessage;
    }
    return null;
  }

}