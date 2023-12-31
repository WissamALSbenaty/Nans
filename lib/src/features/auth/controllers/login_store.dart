


import 'package:nans/src/Data/models/login_model.dart';
import 'package:nans/src/Data/repositories/abstract/i_auth_repository.dart';
import 'package:nans/src/core/controllers/app_controller.dart';
import 'package:nans/src/core/controllers/base_controller.dart';
import 'package:nans/src/core/controllers/custom_form_mixin.dart';
import 'package:nans/src/core/presentation/auto_router.dart';
import 'package:nans/src/core/presentation/arguments/phone_number_submitting_arguments.dart';
import 'package:nans/src/core/presentation/arguments/submit_new_password_arguments.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

@injectable
class LoginController extends BaseController with CustomFormMixin{

  final IAuthRepository authRepository;
  final AppController appController;
  LoginController(this.authRepository, this.appController,super.logger,){
    initForm(fieldsNumber: 2);
  }

  @override
  Future<void> afterSuccessSubmit() async{
    appRouter.popUntilRoot();
  }

  @override
  Future<void> submitFunction() async{
    await appController.login(LoginModel( email: currentValues[0]!, password: currentValues[1]! ));

  }

  @action
  Future<void> restorePassword(BuildContext context)async{
      appRouter.push(  SubmitPhoneNumberRoute(
          args: EmailSubmittingArguments(
              pageTitle: "Please enter your email to confirm your email",
              codeSender:({required String email})=>authRepository.sendForgetPasswordCode(email: email),
              codeChecker:({required String email,required String otpCode})=>authRepository.checkForgetPasswordCode(email: email,otpCode: otpCode),
              afterSubmittingEmail: ({required String email})async{},
              afterSuccessVerification: ({required String email,required String otpCode })async {
                appRouter.push(
                    SubmitNewPasswordRoute(args: SubmitNewPasswordArguments(
                      onSubmitNewPassword: ( String password)async{
                        await authRepository.resetPassword(email: email,otpCode: otpCode,newPassword: password);
                      },
                    )));
              }
          )
      ));

    }


}