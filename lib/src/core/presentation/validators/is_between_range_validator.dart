


import 'package:nans/src/core/presentation/validators/custom_validator.dart';
import 'package:nans/src/core/presentation/validators/is_greater_than_validator.dart';
import 'package:nans/src/core/presentation/validators/is_smaller_than_validator.dart';

class IsBetweenRangeValidator extends CustomValidator{
  final num? minimumNumber,maximumNumber;

  IsBetweenRangeValidator({required this.minimumNumber,required this.maximumNumber, super.nextValidator});

  @override
  String? validate({required String fieldName, required String? toCheckString}) {
    String? ret;
    if(minimumNumber!=null) {
      ret = IsGreaterThanValidator(toCompare: minimumNumber!,allowEquality: true).validate(fieldName: fieldName,toCheckString: toCheckString);
    }
    if(maximumNumber!=null) {
     ret= IsSmallerThanValidator(toCompare: maximumNumber!,allowEquality: true).validate(fieldName: fieldName,toCheckString: toCheckString);
    }
    return ret;
  }
  
}