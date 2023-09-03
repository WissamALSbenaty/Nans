import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nans/src/Data/models/form_field_model.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/validators/is_not_empty_validator.dart';
import 'package:nans/src/features/dynamic_forms/controllers/dynamic_form_controller.dart';

class DropDownField extends StatefulWidget {
  final SelectFieldModel model;
  final DynamicFormController formController;
  const DropDownField({Key? key,required this.model, required this.formController,}) : super(key: key);

  @override
  State<DropDownField> createState() => _DropDownFieldState();
}

class _DropDownFieldState extends State<DropDownField> {
  String? selectedOption;

  void selectOption(String? option){
    setState(() {
      selectedOption=option;
      widget.formController.changeValue(widget.model.key,option);
    });
  }
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedOption,
        validator:(value)=> widget.model.validation.isRequired?IsNotEmptyValidator().check(fieldName:widget.model.key, toCheckString: value)
                :null,
        hint: Text(widget.model.key,style: AppStyle.textTheme.bodySmall,),
        isExpanded: true,
        itemHeight: 70.h,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: const BorderSide(color: AppStyle.primary),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: AppStyle.blackColor.shade200),
            borderRadius: BorderRadius.circular(16.r)
          )
        ),

        items: widget.model.options.map((e) => DropdownMenuItem<String>(
          value: e.value,

          child: Container(
            color: selectedOption ==e.value?AppStyle.primary.withOpacity(0.4):null,
              child: Center(child: Text(e.key
                ,style: AppStyle.textTheme.titleLarge!.copyWith(color: AppStyle.blackColor.shade600),))),
        )).toList(),
        onChanged: selectOption
    );
  }
}
