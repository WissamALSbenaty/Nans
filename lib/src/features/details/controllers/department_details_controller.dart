import 'package:mobx/mobx.dart';
import 'package:nans/src/Data/models/department_details_model.dart';
import 'package:nans/src/Data/models/service_model.dart';
import 'package:nans/src/Data/repositories/abstract/i_nans_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:nans/src/core/controllers/object_data_loader.dart';

part 'department_details_controller.g.dart';

@injectable
class DepartmentDetailsController extends DepartmentDetailsControllerBase with _$DepartmentDetailsController{
  DepartmentDetailsController(@factoryParam super.departmentId, super.nansRepository, super.logger);

}
abstract class DepartmentDetailsControllerBase extends ObjectDataLoader<DepartmentDetailsModel>with Store{

  final String departmentId;
  final INansRepository nansRepository;

  DepartmentDetailsControllerBase(this.departmentId,this.nansRepository,super.logger);


  @override
  Future<DepartmentDetailsModel> dataGetter ()=>nansRepository.getDepartmentDetails(id: departmentId);

  @observable
  ObservableList<ServiceModel>  departmentServices=ObservableList();

  @override
  Future<void> onInit() async{
    departmentServices=ObservableList.of((await nansRepository.getServicesOfDepartment(departmentId: departmentId)).items);
    return super.onInit();
  }

}