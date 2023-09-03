import 'package:auto_route/auto_route.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nans/src/core/presentation/auto_router.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/validators/is_name_validator.dart';
import 'package:nans/src/core/presentation/widgets/custom_app_bar.dart';
import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:nans/src/core/presentation/widgets/main_button.dart';
import 'package:nans/src/core/presentation/widgets/secondary_button.dart';
import 'package:nans/src/core/presentation/widgets/text_fields/email_text_field.dart';
import 'package:nans/src/core/presentation/widgets/text_fields/form_controller_text_field.dart';
import 'package:nans/src/core/presentation/widgets/text_fields/password_text_field.dart';
import 'package:nans/src/core/presentation/widgets/text_fields/phone_number_text_field.dart';
import 'package:nans/src/core/util/enums.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:nans/src/core/util/mixins.dart';
import 'package:nans/src/features/auth/controllers/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


@RoutePage()
class RegisterPage extends StatefulWidget {
   const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>with StateControllerCreatorMixin<RegisterController,RegisterPage> {
  @override
  Widget build(BuildContext context) {
      return Form(
        key: createdController.formKey,
        child: Scaffold(
          backgroundColor: Colors.white,

          appBar:CustomAppBar(
            context: context,
            barTitle: 'Create Account',
          ),

          body: Observer(
            builder: (_) => SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,

                  children: [

                   Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CustomSizedBox(width: 8,),
                        Text('Please fill up the form'.translateWord,
                          style:AppStyle.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold) ,),
                      ],
                    ),
                    const CustomSizedBox(height: 8,),

                    FormControllerTextField(
                      validator: IsNameValidator(),
                      title: 'Full name',
                      formController: createdController,fieldIndex: 0,
                    ),
                    const CustomSizedBox(height: 8,),
                    FormControllerTextField(
                      validator: IsNameValidator(),
                      title: 'Father name',
                      formController: createdController,fieldIndex: 1,
                    ),
                    const CustomSizedBox(height: 8,),
              FormControllerTextField(
                validator: IsNameValidator(),
                title: 'Mother name',
                formController: createdController,fieldIndex: 2,
              ),

                    const CustomSizedBox(height: 8,),

                    PhoneNumberTextField(formController: createdController,fieldIndex: 3,),
                    const CustomSizedBox(height: 8,),
                    EmailTextField(formController: createdController,fieldIndex: 4,),
                    const CustomSizedBox(height: 8,),
                    PasswordTextField(formController: createdController,fieldIndex: 5,),

                    const CustomSizedBox(height: 16,),
                    Text('Gender :',style: AppStyle.textTheme.bodyMedium,),
                ]),
                        Row(
                          children: [
                            Expanded(
                              child: RadioListTile<GenderType>(

                                  value: GenderType.MALE,contentPadding: EdgeInsets.zero,
                                  title: Text("Male".translateWord,style: AppStyle.textTheme.bodySmall,),
                                  groupValue: createdController.userGender, onChanged:createdController.setGenderType),
                            ),
                            Expanded(
                              child: RadioListTile<GenderType>(value: GenderType.FEMALE,contentPadding: EdgeInsets.zero,

                                  title: Text("Female".translateWord,style: AppStyle.textTheme.bodySmall,),
                                  groupValue: createdController.userGender, onChanged:createdController.setGenderType),
                            ),
                          ],
                        ),



                    TextButton(
                        onPressed: ()=>appRouter.replace( const LoginRoute()),
                        child: Text("Already have an account?".translateWord,
                            style: AppStyle.textTheme.titleMedium!.copyWith(color: Colors.blue,
                              fontWeight: FontWeight.bold,))
                    ),


                    Center(
                      child: MainButton(
                          title: 'Create account',
                          isLoading:createdController.isLoading,
                          onPressed: createdController.submitForm
                      ),
                    ),
                    const CustomSizedBox(height: 16,),
                    Center(
                      child: SecondaryButton(
                          title: 'Continue as guest',
                          onPress: createdController.continueAsGuest
                      ),
                    ),
                    const CustomSizedBox(height: 306,)


               ]),)
          ) ),
      );
  }

}
