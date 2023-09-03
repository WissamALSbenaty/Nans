import 'package:nans/src/Data/models/pagination_data_model.dart';
import 'package:nans/src/Data/models/service_model.dart';
import 'package:nans/src/Data/repositories/abstract/i_nans_repository.dart';
import 'package:nans/src/core/controllers/pagination_list_data_loader.dart';
import 'package:injectable/injectable.dart';

@injectable
class ServicesController extends PaginationListDataLoader<ServiceModel>{

  final INansRepository nansRepository;

  ServicesController(this.nansRepository,super.logger);

  @override
  Future<PaginationDataModel<ServiceModel>> paginationGetter(int page) => nansRepository.getServices(pageNumber: pageNumber);

}