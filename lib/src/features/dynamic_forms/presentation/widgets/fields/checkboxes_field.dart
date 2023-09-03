import 'package:flutter/material.dart';
import 'package:nans/src/Data/models/form_field_model.dart';
import 'package:nans/src/Data/models/option_model.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:nans/src/features/dynamic_forms/controllers/dynamic_form_controller.dart';

class CheckboxesField extends StatefulWidget {
  final CheckboxFieldModel model;
  final DynamicFormController controller ;
  const CheckboxesField({Key? key,required this.model, required this.controller}) : super(key: key);

  @override
  State<CheckboxesField> createState() => _CheckboxesFieldState();
}

class _CheckboxesFieldState extends State<CheckboxesField> {

  List<String> selectedOptions=[];

  void toggleOptionSelection(String option){
    setState(() {
      if(selectedOptions.contains(option))
        {
          selectedOptions.remove(option);
        widget.controller.removeValue(option,widget.model.key);
        }
      else {
        selectedOptions.add(option);
          widget.controller.addValue(option,widget.model.key);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text(widget.model.key,style: AppStyle.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),),
      const CustomSizedBox(height: 8,),
      for(OptionModel option in widget.model.options)
        ...[
          CheckboxListTile(
            value: selectedOptions.contains(option.value),
            onChanged:(_)=> toggleOptionSelection(option.value),
            title: Text(option.key,style: AppStyle.textTheme.titleLarge!.copyWith(color: AppStyle.blackColor.shade600),),),
          const CustomSizedBox(height: 4,)
        ]
    ],);
  }
}
