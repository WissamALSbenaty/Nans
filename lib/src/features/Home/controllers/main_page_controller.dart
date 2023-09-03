
import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:nans/src/Data/models/department_model.dart';
import 'package:nans/src/Data/models/licenced_company_model.dart';
import 'package:nans/src/Data/models/news_model.dart';
import 'package:nans/src/Data/models/service_model.dart';
import 'package:nans/src/Data/repositories/abstract/i_nans_repository.dart';
import 'package:nans/src/core/controllers/base_controller.dart';

part 'main_page_controller.g.dart';

@injectable
class MainPageController extends MainPageControllerBase with _$MainPageController {
  MainPageController(super.nansRepository, super.logger);

}

abstract class MainPageControllerBase extends BaseController with Store{

  final INansRepository nansRepository;

  MainPageControllerBase(this.nansRepository,super.logger){
    loadData();
  }

  @observable
  ObservableList<ServiceModel> services=ObservableList();

  @observable
  ObservableList<NewsModel> news=ObservableList();

  @observable
  ObservableList<DepartmentModel> departments=ObservableList();

  @observable
  ObservableList<LicencedCompanyModel> licencedCompanies=ObservableList();

  @action
  void loadData()=>runStorePrimaryFunction(Future(()async{
    List<Future> futures=[
      nansRepository.getServices(pageNumber: 0).then((value) => services=ObservableList.of(value.items)),
      nansRepository.getNews(pageNumber: 0).then((value) => news=ObservableList.of(value.items)),
      nansRepository.getDepartments(pageNumber: 0).then((value) => departments=ObservableList.of(value.items)),
      nansRepository.getLicencedCompanies().then((value) => licencedCompanies=ObservableList.of(value)),
    ];
    await Future.wait(futures);

    }));



}