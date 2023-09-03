import 'package:nans/src/Data/Errors/core_errors.dart';
import 'package:nans/src/Data/Errors/custom_error.dart';
import 'package:nans/src/Data/repositories/abstract/i_logger.dart';
import 'package:nans/src/core/presentation/snakebars/bottom_snack_bar.dart';
import 'package:nans/src/core/util/enums.dart';
import 'package:mobx/mobx.dart';

part 'base_controller.g.dart';

class BaseController extends BaseControllerBase with _$BaseController{
  BaseController(super.logger);
}

abstract class BaseControllerBase with Store {

  final ILogger logger;

  BaseControllerBase(this.logger);

  @observable
  CustomError? error;

  @observable
  bool isLoading=false;

  @computed
  bool get hasData=> error==null && !isLoading;


  @action
  Future<void> onInit()async{}

  @action
  void dispose(){}

  @action
  Future<bool> runStorePrimaryFunction(Future function, {Function(CustomError)? onCatchError})async{
    try{
      if(isLoading||error!=null) {
        return false;
      }


      isLoading=true;
      await function;
      return true;
    }
    on CustomError catch (e){
      if(onCatchError!=null) {
        onCatchError(e);
      }
      if(e is ServerError) {
        await logger.logCritical(className:  runtimeType.toString(),exception:  e);
      }
      error=e;
      return false;
    }
    on Exception catch(e){
      error=ServerError();
      await logger.logCritical(className:  runtimeType.toString(),exception:  e);
      return false;
    }
    finally{
      isLoading=false;
    }
  }

  @action
  Future<bool> runStoreSecondaryFunction(Future function, {Function(CustomError)? onCatchError})async{
    try{
      await function;
      return true;
    }
    on CustomError catch (e){
      if(onCatchError!=null) {
        onCatchError(e);
      }
      showSnackBar(e.errorMessage,ToastType.error);
      if(e is ServerError) {
        await logger.logCritical(className:  runtimeType.toString(),exception:  e);
      }
      return false;
    }
    on Exception catch(e){
      await logger.logCritical(className:  runtimeType.toString(),exception:  e);
      return false;
    }
  }



}