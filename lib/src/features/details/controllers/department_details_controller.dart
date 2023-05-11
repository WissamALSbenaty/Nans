import 'package:nans/src/Data/models/department_details_model.dart';
import 'package:nans/src/Data/repositories/abstract/i_nans_repository.dart';
import 'package:nans/src/core/controllers/custom_data_loader.dart';
import 'package:injectable/injectable.dart';

@injectable
class DepartmentDetailsController extends CustomDataLoader<DepartmentDetailsModel>{

  final String newsId;
  final INansRepository nansRepository;

  DepartmentDetailsController(@factoryParam this.newsId,this.nansRepository,super.logger):super(
    dataGetter: ()=>nansRepository.getDepartmentDetails(id: newsId),
  );
}