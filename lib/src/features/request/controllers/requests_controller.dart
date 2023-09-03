
import 'package:nans/src/Data/models/pagination_data_model.dart';
import 'package:nans/src/Data/models/request_model.dart';
import 'package:nans/src/Data/repositories/abstract/i_requests_repository.dart';
import 'package:nans/src/core/controllers/pagination_list_data_loader.dart';
import 'package:injectable/injectable.dart';

@injectable
class RequestsController extends PaginationListDataLoader<RequestModel>{

  final IRequestsRepository requestsRepository;
  RequestsController(super.logger, this.requestsRepository,);

  @override
  Future<PaginationDataModel<RequestModel>> paginationGetter(int page) =>requestsRepository.getRequests(pageNumber: pageNumber);
}




