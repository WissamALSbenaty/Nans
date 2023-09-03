
import 'package:nans/src/Data/models/request_details_model.dart';
import 'package:nans/src/Data/repositories/abstract/i_requests_repository.dart';
import 'package:nans/src/core/controllers/app_controller.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:nans/src/core/controllers/object_data_loader.dart';

part 'request_details_controller.g.dart';

@injectable
class RequestDetailsController extends RequestDetailsControllerBase with _$RequestDetailsController {
  RequestDetailsController(@factoryParam  super.requestId, super.requestsRepository, super.productsRepository,super.appController,);

}
abstract class RequestDetailsControllerBase  extends ObjectDataLoader<RequestDetailsModel> with Store{

  final IRequestsRepository requestsRepository;
  final AppController appController;
  final String requestId;

  RequestDetailsControllerBase (this.requestId,this.requestsRepository,this.appController,super.logger,);

  @override
  Future<RequestDetailsModel>  dataGetter ()=>requestsRepository.getRequestDetails( requestId);

  @action
  void cancelRequest()=>runStoreSecondaryFunction(Future(()async{
    await requestsRepository.cancelRequest(requestId);
    loadData();
  }));

  @action
  void rateService({required int vote,required String comment})=>runStoreSecondaryFunction(Future(()async{
    requestsRepository.rateService(serviceId: data!.service.id,vote:vote,comment:comment);
  }));

}