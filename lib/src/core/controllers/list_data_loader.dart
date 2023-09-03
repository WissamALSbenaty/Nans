


import 'package:nans/src/core/controllers/object_data_loader.dart';
import 'package:nans/src/Data/Errors/core_errors.dart';
import 'package:mobx/mobx.dart';

part 'list_data_loader.g.dart';

abstract class ListDataLoader<T> extends ListDataLoaderBase<T> with _$ListDataLoader{

  ListDataLoader(super.logger);
}

abstract class ListDataLoaderBase<T> extends ObjectDataLoader<ObservableList<T>>  with Store  {

  ListDataLoaderBase(super.logger,);

  Future<List<T>> listGetter();
  @override
  Future<ObservableList<T>> dataGetter()async=>ObservableList.of(await listGetter());

  @override
  @action
  Future<void> loadData()=>runStorePrimaryFunction(Future(()async{
    await onInit();


    List<T> result =await dataGetter();
    data= ObservableList.of( result);
    if(data!.isEmpty) {
      throw EmptyItemsError();
    }
  }));



}