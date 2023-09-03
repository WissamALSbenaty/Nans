import 'package:mobx/mobx.dart';
import 'package:nans/src/Data/models/login_model.dart';
import 'package:nans/src/Data/models/register_model.dart';
import 'package:nans/src/Data/repositories/abstract/i_auth_repository.dart';
import 'package:nans/src/core/controllers/app_controller.dart';
import 'package:nans/src/core/controllers/base_controller.dart';
import 'package:nans/src/core/controllers/custom_form_mixin.dart';
import 'package:nans/src/core/presentation/arguments/confirm_phone_number_page_arguments.dart';
import 'package:nans/src/core/presentation/auto_router.dart';
import 'package:nans/src/core/presentation/snakebars/bottom_snack_bar.dart';
import 'package:nans/src/core/presentation/snakebars/snack_bar_messages.dart';
import 'package:nans/src/core/util/enums.dart';
import 'package:injectable/injectable.dart';

part 'register_controller.g.dart';

@injectable
class RegisterController extends RegisterControllerBase with _$RegisterController{

  RegisterController(super.appController,super.authRepository,super.logger);
}

abstract class RegisterControllerBase extends BaseController with CustomFormMixin, Store {

  final IAuthRepository authRepository;
  final AppController appController;

  RegisterControllerBase(this.appController,this.authRepository,super.logger,){
    initForm(fieldsNumber: 6);
  }
  @observable
  GenderType userGender=GenderType.MALE;

  @action
  void setGenderType(GenderType? genderType)=> userGender= genderType??GenderType.MALE;

  @override
    Future<void> submitFunction() async{
    RegisterModel registerModel = RegisterModel(
      name: currentValues[0]!,
      fatherName:  currentValues[1]!,
      motherName:  currentValues[2]!,
      phoneNumber: currentValues[3]!,
      email: currentValues[4]!,
      password: currentValues[5]!,
      gender:userGender ,
    );
    await appController.register(registerModel);
  }

  @override
  Future<void> afterSuccessSubmit()async {
    RegisterModel registerModel = RegisterModel(
      name: currentValues[0]!,
      fatherName: currentValues[1]!,
      motherName: currentValues[2]!,
      phoneNumber: currentValues[3]!,
      email: currentValues[4]!,
      password: currentValues[5]!,
      gender: userGender,
    );

    appRouter.push(ConfirmPhoneNumberRoute(args: ConfirmEmailPageArguments(
      email: registerModel.email, codeSender:null ,
      codeChecker: ({required String email,required String otpCode})=>authRepository.checkConfirmationCode(email: email, otpCode: otpCode),

      afterSuccessSubmitting: ({required String otpCode, required String email}) async {
        await appController.login(LoginModel(email: registerModel.email, password: registerModel.password));

        showSnackBar(SnackBarMessages.registeringSuccess, ToastType.success);

        appRouter.popUntilRoot();
        appRouter.replace(AuthRoute());
      },

    )));
  }

  void continueAsGuest() {
    appController.loginAsGuest();

    appRouter.popUntilRoot();
    appRouter.replace(AuthRoute());
  }


 }