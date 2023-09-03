


import 'package:nans/src/core/controllers/base_controller.dart';
import 'package:mobx/mobx.dart';

part 'object_data_loader.g.dart';

abstract class ObjectDataLoader<T> extends ObjectDataLoaderBase<T> with _$ObjectDataLoader {
  ObjectDataLoader(super.logger,);

}

abstract class ObjectDataLoaderBase<T> extends BaseController with Store {

  Future<T> dataGetter() ;

  ObjectDataLoaderBase(super.logger,){
     loadData();
  }

  @observable
   T? data;

  @action
  Future<void> loadData()=>runStorePrimaryFunction(Future(()async{

    await onInit();
    data = await dataGetter();
  }));


}