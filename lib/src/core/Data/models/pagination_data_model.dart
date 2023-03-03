


import 'package:etloob/src/core/Data/models/pagination_response_model.dart';

class PaginationDataModel<T>{
  late List<T> items;
  late int totalMatchedItems;
  late bool canLoadMoreData;

  PaginationDataModel.fromPaginationResponse(PaginationResponseModel response, T Function(Map<String,dynamic>) mapper){
    List<dynamic> responseData=response.data as List<dynamic>;
    items=responseData.map((e)=>mapper(e)).toList();
    totalMatchedItems=response.totalCount;
    canLoadMoreData=response.totalPages>response.currentPage;
  }
}