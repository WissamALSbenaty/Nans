


import 'package:nans/src/Data/models/pagination_data_model.dart';
import 'package:nans/src/Data/models/request_details_model.dart';
import 'package:nans/src/Data/models/request_model.dart';
import 'package:nans/src/Data/repositories/abstract/repository.dart';

abstract class IRequestsRepository extends Repository {
  IRequestsRepository(super.apiHelper);

  Future<RequestDetailsModel> getRequestDetails(String requestId);
  Future<PaginationDataModel<RequestModel>> getRequests({required int pageNumber});
  Future<void> submitRequest({required String serviceId,required Map<String,dynamic> form,});
  Future<String> uploadFile({required String filePath});

  Future<void> cancelRequest(String requestId);
  Future<void> rateService({required String serviceId,required int vote,required String comment});

}
