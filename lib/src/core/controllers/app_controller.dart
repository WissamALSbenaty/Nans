
import 'package:nans/dependencies.dart';
import 'package:nans/src/Data/api_helper.dart';
import 'package:nans/src/Data/local_database_tables/app_database.dart';
import 'package:nans/src/Data/models/app_config_model.dart';
import 'package:nans/src/Data/models/app_translation_model.dart';
import 'package:nans/src/Data/models/login_model.dart';
import 'package:nans/src/Data/models/login_response_model.dart';
import 'package:nans/src/Data/models/register_model.dart';
import 'package:nans/src/Data/models/user_profile_model.dart';
import 'package:nans/src/Data/repositories/abstract/i_auth_repository.dart';
import 'package:nans/src/Data/repositories/abstract/i_utils_repository.dart';
import 'package:nans/src/core/controllers/base_controller.dart';
import 'package:nans/src/core/presentation/arguments/confirm_phone_number_page_arguments.dart';
import 'package:nans/src/core/presentation/arguments/phone_number_submitting_arguments.dart';
import 'package:nans/src/core/presentation/arguments/submit_new_password_arguments.dart';
import 'package:nans/src/core/presentation/auto_router.dart';
import 'package:nans/src/core/presentation/dialogs/custom_dialog.dart';
import 'package:nans/src/core/presentation/dialogs/custom_text_field_dialog.dart';
import 'package:nans/src/core/presentation/dialogs/force_update_dialog.dart';
import 'package:nans/src/core/presentation/dialogs/optional_update_dialog.dart';
import 'package:nans/src/core/presentation/dialogs/pending_edit_dialog.dart';
import 'package:nans/src/core/presentation/snakebars/bottom_snack_bar.dart';
import 'package:nans/src/core/presentation/snakebars/snack_bar_messages.dart';
import 'package:nans/src/core/presentation/validators/is_equal_validator.dart';
import 'package:nans/src/core/util/enums.dart';
import 'package:nans/src/core/util/localization_manager.dart';
import 'package:nans/src/core/util/notification_manager.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'app_controller.g.dart';


@singleton
class AppController extends AppControllerBase with _$AppController{
  AppController( super.authRepository, super.utilsRepository, super.appDatabase, super.localizationManager, super.notificationsManager,super.logger);

}

abstract class AppControllerBase extends BaseController with Store {


  final IUtilsRepository utilsRepository;
  final IAuthRepository authRepository;
  final AppDatabase appDatabase;
  final LocalizationManager localizationManager;
  final NotificationsManager notificationsManager;

  AppControllerBase(this.authRepository,this.utilsRepository, this.appDatabase, this.localizationManager, this.notificationsManager,super.logger){
    notificationsManager.initFirebaseMessaging();
    loadData();
  }

  @observable
  AppConfigModel? appConfigModel;

  @observable
  UserProfileModel? userProfileModel;

  @observable
  User? currentUser;

  @observable
  AppTranslationModel? applicationTranslationModel;

  @action
  Future<void> changeAppLanguage()async{
    localizationManager.toggleLanguage();
    loadData();
  }

  @action
  Future<void> loadData()=>runStorePrimaryFunction(Future(()async{
    // For language Initialization
    await Future.delayed(const Duration(seconds: 1));

    bool isAuthenticatedUser = false;
    try {
      currentUser = await appDatabase.getUser();
      if (currentUser?.token.isNotEmpty ?? false) {
        isAuthenticatedUser = true;
        getIt<ApiHelper>().setToken(currentUser!.token);
      }
    }
    catch (e) {
          isAuthenticatedUser = false;
    }
    List<Future> dataGetters = [
      if(isAuthenticatedUser)
        ...[
          refreshProfile(),
          authRepository.updateFirebaseToken(),
        ],
      utilsRepository.getAppConfig().then((value) {
         appConfigModel = value;
         checkAppVersion();
      }),
      utilsRepository.getAppTranslation().then((value) => applicationTranslationModel = value),
    ];
    await Future.wait(dataGetters);
  }));

  @action
  Future<void> refreshProfile()async{
    await authRepository.getUserProfile().then((value) {

      userProfileModel = value;
      if(userProfileModel!=null)
      appDatabase.insertUser(User(name:userProfileModel!.name,
          fatherName:userProfileModel!.fatherName,
          motherName:userProfileModel!.motherName,
          phoneNumber:userProfileModel!.phoneNumber, email:userProfileModel!.email,
          password:currentUser!.password, token: currentUser!.token));
      checkAccountConfirmation();
    });
  }


  @action
  void changeEmail()=>runStoreSecondaryFunction(Future(()async{
    appRouter.push(SubmitPhoneNumberRoute(args: EmailSubmittingArguments(
        pageTitle:'Please enter your new Email' ,

        afterSubmittingEmail: ({required String email}) async{},
        afterSuccessVerification:({required String email,required String otpCode})async{

          authRepository.changeEmail(email: email);

          appRouter.pop();
          showCustomDialog(dialog: const PendingEditDialog());
        },
        codeSender: ({required String email}) =>authRepository.sendConfirmationCode(email: email),
        codeChecker: ({required String email,required String otpCode})=>authRepository.checkConfirmationCode(email: email, otpCode: otpCode),
    )));
    }));

  @action
  void changePassword()=>runStoreSecondaryFunction(Future(()async {
    showCustomDialog(dialog: CustomTextFieldDialog(title: 'Are You Sure ?',
        dialogTextContent: 'Please Enter Your Password',
        mainActionText: 'Continue',
        textFieldValidator:IsEqualValidator(toCompare: currentUser?.password,),
        textFieldTitle: 'old password',
        onMainActionPressed: (String? passwordValue)  => appRouter.push(
            SubmitNewPasswordRoute(args: SubmitNewPasswordArguments(
              onSubmitNewPassword: (String newPassword) async =>
              await authRepository.changePassword(oldPassword: passwordValue!,
                  newPassword: newPassword),
            )
            ))));
  }));

  @action
  Future<void> logout()=>runStoreSecondaryFunction(Future(()async{
    await authRepository.logout();
    userProfileModel=null;
    currentUser=null;}));


  @action
  Future<void> login(LoginModel loginModel)async{

    LoginResponseModel loginResponseModel =await authRepository.login(loginModel);
    userProfileModel=loginResponseModel.user;
    currentUser=await appDatabase.getUser();
  }

  @action
  Future<void> loginAsGuest()async{
      await authRepository.loginAsGuest();
      currentUser=await appDatabase.getUser();
      userProfileModel=null;
  }


  @action
  Future<void> register(RegisterModel registerModel)async{
    await authRepository.register(registerModel);
  }

  void checkAccountConfirmation(){
      if ((currentUser != null) && (userProfileModel?.accountConfirmation == false)) {
      Future.delayed(const Duration(seconds: 3)).then((value) =>
            appRouter.push(ConfirmPhoneNumberRoute(args: ConfirmEmailPageArguments(
              email: currentUser!.email,codeSender: ({required String email})=>authRepository.sendConfirmationCode(email: email),
              codeChecker: ({required String email,required String otpCode})=>authRepository.checkConfirmationCode(email: email, otpCode: otpCode),
              afterSuccessSubmitting: ({required String otpCode, required String email}) async {

                login(LoginModel(email: currentUser!.email,
                    password: currentUser!.password));

                showSnackBar(SnackBarMessages.registeringSuccess, ToastType.success);

                appRouter.popUntilRoot();
              },

            ))));
      }
  }

 void checkAppVersion()async{
    await Future.delayed(const Duration(seconds: 7));
      ApplicationState currentApplicationState=appConfigModel?.mobileSettings.getApplicationState() ?? ApplicationState.stable;
      if( currentApplicationState==ApplicationState.mustUpdate){
          showCustomDialog(isDismissible: false, dialog: const ForceUpdateDialog(),);
      }
      else if(currentApplicationState==ApplicationState.canUpdate){
        showCustomDialog(dialog: const OptionalUpdateDialog());
      }
  }
}