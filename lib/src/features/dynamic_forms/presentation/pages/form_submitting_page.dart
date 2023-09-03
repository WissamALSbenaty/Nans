import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nans/dependencies.dart';
import 'package:nans/src/Data/models/service_details_model.dart';
import 'package:nans/src/core/presentation/widgets/custom_app_bar.dart';
import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:nans/src/core/presentation/widgets/main_button.dart';
import 'package:nans/src/features/dynamic_forms/controllers/dynamic_form_controller.dart';
import 'package:nans/src/features/dynamic_forms/presentation/widgets/fields/checkboxes_field.dart';
import 'package:nans/src/features/dynamic_forms/presentation/widgets/fields/date_picker_field.dart';
import 'package:nans/src/features/dynamic_forms/presentation/widgets/fields/drop_down_field.dart';
import 'package:nans/src/features/dynamic_forms/presentation/widgets/fields/normal_text_field.dart';
import 'package:nans/src/features/dynamic_forms/presentation/widgets/fields/numerical_field.dart';
import 'package:nans/src/features/dynamic_forms/presentation/widgets/fields/pdf_picker_field.dart';
import 'package:nans/src/features/dynamic_forms/presentation/widgets/fields/radio_button_field.dart';

@RoutePage()
class FormSubmittingPage extends StatefulWidget {
  final ServiceDetailsModel serviceDetailsModel;
  const FormSubmittingPage({Key? key, required this.serviceDetailsModel}) : super(key: key);

  @override
  State<FormSubmittingPage> createState() => _FormSubmittingPageState();
}

class _FormSubmittingPageState extends State<FormSubmittingPage> {
  late DynamicFormController controller;

  @override
  void initState() {
    controller=getIt<DynamicFormController>(param1: widget.serviceDetailsModel);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context: context,
        barTitle: widget.serviceDetailsModel.title,
      ),
      body: Form(
       key: controller.formKey,
        child: SingleChildScrollView(
          padding:  EdgeInsets.all( 16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for(int i=0;i< widget.serviceDetailsModel.allForms.length ;i++)
                ...[
                  widget.serviceDetailsModel.allForms.elementAt(i).map(
                      datePickerFieldModel:(model)=> DatePickerField(
                          model: model,controller:controller,
                      ),
                      radioFieldModel:(model)=>RadioButtonsField(
                          model: model,controller:controller ,
                      ),
                      selectFieldModel:(model)=> DropDownField(
                        model: model,formController: controller,
                      ),

                      numericFieldModel:(model)=> NumericField(
                          model:model,
                        fieldIndex: i,formController: controller,
                      ),
                      textFieldModel:(model)=> NormalTextField(
                        fieldIndex: i,formController: controller,
                        form:model,
                      ),
                      checkboxFieldModel:(model)=>CheckboxesField(model: model, controller: controller) ,

                      filePickerFieldModel:(model)=>PdfPickerField(model:model,controller:controller,)),

                  const CustomSizedBox(height: 16,),
                ],


              Center(
                child: Observer(
                  builder: (_) => MainButton(title: 'Submit',
                        isLoading: controller.isLoading,
                        onPressed: controller.submitForm)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  
}
