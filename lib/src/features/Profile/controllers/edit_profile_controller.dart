import 'package:nans/src/Data/repositories/abstract/i_auth_repository.dart';
import 'package:nans/src/core/controllers/app_controller.dart';
import 'package:nans/src/core/controllers/base_controller.dart';
import 'package:nans/src/core/controllers/custom_form_mixin.dart';
import 'package:injectable/injectable.dart';
import 'package:nans/src/core/presentation/dialogs/custom_dialog.dart';
import 'package:nans/src/core/presentation/dialogs/pending_edit_dialog.dart';

@injectable
class  EditProfileController extends BaseController with CustomFormMixin{

 final IAuthRepository authRepository;
 final AppController appController;
  EditProfileController(this.authRepository,this.appController,super.logger){
        initForm(fieldsNumber: 4,initialValues: [appController.userProfileModel?.name,
         appController.userProfileModel?.fatherName,appController.userProfileModel?.motherName,appController.userProfileModel?.phoneNumber,]);
   }

  @override
  Future<void> afterSuccessSubmit()async {
       showCustomDialog(dialog: const PendingEditDialog());
  }

  @override
  Future<void> submitFunction() => authRepository.editUserProfile(name: currentValues[0],fatherName: currentValues[1],
      motherName: currentValues[2],phoneNumber: currentValues[3]);
 }