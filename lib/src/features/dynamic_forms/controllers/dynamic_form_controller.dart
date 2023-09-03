
import 'package:mobx/mobx.dart';
import 'package:nans/src/Data/Errors/custom_error.dart';
import 'package:nans/src/Data/models/form_field_model.dart';
import 'package:nans/src/Data/models/service_details_model.dart';
import 'package:nans/src/Data/repositories/abstract/i_requests_repository.dart';
import 'package:nans/src/core/controllers/base_controller.dart';
import 'package:injectable/injectable.dart';
import 'package:nans/src/core/controllers/custom_form_mixin.dart';
import 'package:nans/src/core/presentation/dialogs/custom_dialog.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:nans/src/features/dynamic_forms/presentation/widgets/dialogs/success_submit_dialog.dart';

part 'dynamic_form_controller.g.dart';

@injectable
class DynamicFormController extends DynamicFormControllerBase with _$DynamicFormController {
  DynamicFormController(@factoryParam super.serviceDetailsModel, super.requestsRepository, super.logger);
}


abstract class DynamicFormControllerBase extends BaseController with CustomFormMixin, Store {

  final IRequestsRepository requestsRepository;
  final ServiceDetailsModel serviceDetailsModel;
  DynamicFormControllerBase(this.serviceDetailsModel, this.requestsRepository, super.logger){
      initForm(fieldsNumber: serviceDetailsModel.serviceForm?.form.length??0);

  }

  @observable
  ObservableMap<String,dynamic> values=ObservableMap();

  @observable
  ObservableMap<String,String?> files=ObservableMap();

  @action
  void changeFile(String key,String? value)=> files[key]=value;

  @action
  void changeValue(String key,dynamic value)=> values[key]=value;

  @action
  void addValue(String key,String value){
    if(!values.containsKey(key)){
      values[key]= List<String>.empty(growable: true);
    }
    values[key]!.add(value);
  }

  @action
  void removeValue(String key,String value)=>values[key]!.remove(value);

  @action
  bool canSubmitDynamicForm() {
    print('Wiso $values');
    for (FormFieldModel form in serviceDetailsModel.allForms) {
      if (form.validation.isRequired && !values.containsKey(form.key) && !files.containsKey(form.key)) {
       throw CustomError(errorMessage:  "${form.key.translateWord} Field is Required",imagePath: '');
      }
    }
      return true;
  }

  @override
  Future<void> submitFunction()async{
    canSubmitDynamicForm();

    await Future.wait(files.entries/*.fold([],
            (previous,element) =>previous..addAll(element.value*/.map((
              entry)async {
              if( entry.value!=null) {
                await (requestsRepository.uploadFile(filePath:entry.value!).then(
              (value)=> changeValue(entry.key, value)));
              }
            } ));

    await requestsRepository.submitRequest(serviceId: serviceDetailsModel.id, form: values,);
  }

  @override
  Future<void> afterSuccessSubmit()async {
    showCustomDialog(dialog: const SuccessSubmitDialog());
  }

/*  @observable
  ObservableMap<String,List<String>> files=ObservableMap();

  @action
  void addFile(String key,String filePath){
    if(!files.containsKey(key)){
      files[key]= List<String>.empty();
    }
    files[key]!.add(filePath);
  }

  @action
  void removeFile(String key,String filePath)=> files[key]!.remove(filePath);


  */

}