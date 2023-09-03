


import 'package:nans/src/Data/Errors/core_errors.dart';
import 'package:nans/src/Data/models/pagination_data_model.dart';
import 'package:nans/src/core/controllers/list_data_loader.dart';
import 'package:mobx/mobx.dart';

part 'pagination_list_data_loader.g.dart';

abstract class PaginationListDataLoader<T> extends PaginationListDataLoaderBase<T> with _$PaginationListDataLoader {
  PaginationListDataLoader(super.logger,);

}

abstract class PaginationListDataLoaderBase<T> extends ListDataLoader<T> with Store{

  PaginationListDataLoaderBase(super.logger,);

  Future<PaginationDataModel<T>> paginationGetter (int page);

  @override
  Future<List<T>> listGetter()async=>(await paginationGetter(0)).items;


  int pageNumber=0;

  @observable
  bool isLoadingMoreData=false;

  @observable
  bool canLoadMoreData=true;



  @override
  @action
  Future<void> loadData()=>runStorePrimaryFunction(Future(()async{
    canLoadMoreData=true;
    isLoadingMoreData=false;
    pageNumber=0;

    PaginationDataModel<T> paginationData=await paginationGetter(pageNumber);
    pageNumber++;
    canLoadMoreData=paginationData.items.length>=10;
    data= ObservableList.of( paginationData.items);
    if(data!.isEmpty) {
      error= EmptyItemsError();
    }

  }));


  @action
  Future<void> loadNextPage()=>runStoreSecondaryFunction(Future(()async{
    if(isLoadingMoreData || !canLoadMoreData) {
      return ;
    }
    isLoadingMoreData=true;


    PaginationDataModel<T> paginationData=await paginationGetter(pageNumber);
    pageNumber++;
    canLoadMoreData=paginationData.items.length>=10;
    List<T> newData= paginationData.items;
    data?.addAll(newData);
    isLoadingMoreData=false;
  }),onCatchError: (e){
    isLoadingMoreData=false;
  });


}