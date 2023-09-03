

import 'package:dio/dio.dart';
import 'package:nans/src/Data/models/pagination_data_model.dart';
import 'package:nans/src/Data/models/request_details_model.dart';
import 'package:nans/src/Data/models/request_model.dart';
import 'package:nans/src/Data/models/response_model.dart';
import 'package:nans/src/Data/repositories/abstract/i_requests_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: IRequestsRepository)
class RequestsRepository extends IRequestsRepository {

  RequestsRepository( super.apiHelper,) ;

  @override
  Future<RequestDetailsModel> getRequestDetails(String requestId) =>apiHelper.getObject(url: 'mobile/cRequest/$requestId',
        parameters: {}, mapper: RequestDetailsModel.fromJson);

  @override
  Future<PaginationDataModel<RequestModel>> getRequests({required int pageNumber}) =>apiHelper.getPagination(url: 'mobile/cRequest',
      parameters: {"page":pageNumber.toString()}, mapper: RequestModel.fromJson);

  @override
  Future<void> cancelRequest(String requestId) =>apiHelper.patch(url: 'website/cRequest/$requestId', formData: {});

  @override
  Future<void> rateService({required String serviceId, required int vote,required  String comment})=>apiHelper.post(
    url: 'mobile/vote/$serviceId', formData:{
    "value": vote*2,
    "note": comment,
  });

  @override
  Future<void> submitRequest({required String serviceId,required Map<String, dynamic> form,})=>
      apiHelper.post(url: 'mobile/cRequest', formData: {'service':serviceId, "userRequest":form});

  @override
  Future<String> uploadFile({required String filePath})async {
    ResponseModel responseModel=await apiHelper.post(url: 'files?folder=Request',isFormData: true, formData:{
      'files': [await MultipartFile.fromFile(filePath, filename:filePath.split('/').last)],

    });

    Map<String,dynamic> data=responseModel.data;
    List<dynamic> files=data['urls'];
    return files.isEmpty?'': files.first as String;
  }


}