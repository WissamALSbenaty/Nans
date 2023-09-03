import 'package:flutter/material.dart';
import 'package:nans/src/Data/models/form_field_model.dart';
import 'package:nans/src/Data/models/option_model.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:nans/src/features/dynamic_forms/controllers/dynamic_form_controller.dart';

class RadioButtonsField extends StatefulWidget {
  final RadioFieldModel model;
  final DynamicFormController controller ;
  const RadioButtonsField({Key? key,required this.model,required this.controller}) : super(key: key);

  @override
  State<RadioButtonsField> createState() => _RadioButtonsFieldState();

}
class _RadioButtonsFieldState extends State<RadioButtonsField> {

  OptionModel? selectedOption;

  void selectOption(OptionModel option){
    setState(() {
      selectedOption=option;
      widget.controller.changeValue(widget.model.key, option.value);
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
          RadioListTile<OptionModel>(
            groupValue: selectedOption,
            value: option,
            onChanged:(_)=> selectOption(option),
            title: Text(option.key,style: AppStyle.textTheme.titleLarge!.copyWith(color: AppStyle.blackColor.shade600),),),
          const CustomSizedBox(height: 4,)
        ]
    ],);
  }
}

