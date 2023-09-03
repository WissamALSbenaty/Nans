import 'package:flutter/material.dart';
import 'package:nans/src/Data/models/form_field_model.dart';
import 'package:nans/src/core/presentation/widgets/date_picker/custom_date_picker.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:nans/src/features/dynamic_forms/controllers/dynamic_form_controller.dart';

class DatePickerField extends StatelessWidget {
  final DatePickerFieldModel model;
  final DynamicFormController controller;
  const DatePickerField({Key? key,required this.model, required this.controller,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomDatePicker(title: model.key,
        onDateTimeSelection: (date)=> controller.changeValue(model.key, date?.dayFormat ?? ''),

        startDate: DateTime(1900),
        endDate: DateTime.now().add(const Duration(days: 1000000)));
  }
}
