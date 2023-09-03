import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nans/src/core/presentation/validators/is_name_validator.dart';
import 'package:nans/src/core/presentation/widgets/custom_app_bar.dart';
import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:nans/src/core/presentation/widgets/main_button.dart';
import 'package:nans/src/core/presentation/widgets/text_fields/form_controller_text_field.dart';
import 'package:nans/src/core/presentation/widgets/text_fields/phone_number_text_field.dart';
import 'package:nans/src/core/util/mixins.dart';
import 'package:nans/src/features/Profile/controllers/edit_profile_controller.dart';

@RoutePage()
class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> with StateControllerCreatorMixin<EditProfileController,EditProfilePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context: context,
        barTitle: 'Edit Profile',
      ),
      body: Form(
        key: createdController.formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              const CustomSizedBox(height: 16,),
              FormControllerTextField(
                  title: 'Full name',
                  validator: IsNameValidator(),
                  fieldIndex: 0,
                  formController: createdController),
              const CustomSizedBox(height: 16,),
              FormControllerTextField(
                  title: 'Father name',
                  validator: IsNameValidator(),
                  fieldIndex: 1,
                  formController: createdController),
              const CustomSizedBox(height: 16,),
              FormControllerTextField(
                  title: 'Mother name',
                  validator: IsNameValidator(),
                  fieldIndex: 2,
                  formController: createdController),
              const CustomSizedBox(height: 16,),

              PhoneNumberTextField(
                  fieldIndex: 3,
                  formController: createdController),
              const Spacer(),
              MainButton(title: 'Submit',
                  isLoading: createdController.isLoading,
                  onPressed: createdController.submitForm),
              const CustomSizedBox(height: 32,),
            ],
          ),
        ),
      ),
    );
  }

}
