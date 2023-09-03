import 'package:nans/src/Data/models/service_details_model.dart';
import 'package:nans/src/Data/repositories/abstract/i_nans_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:nans/src/core/controllers/object_data_loader.dart';

@injectable
class ServiceDetailsController extends ObjectDataLoader<ServiceDetailsModel>{

  final String newsId;
  final INansRepository nansRepository;

  ServiceDetailsController(@factoryParam this.newsId,this.nansRepository,super.logger);


  @override
  Future<ServiceDetailsModel> dataGetter ()=>nansRepository.getServiceDetails(id: newsId);
}