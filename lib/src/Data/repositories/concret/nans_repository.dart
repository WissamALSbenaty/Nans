import 'package:injectable/injectable.dart';
import 'package:nans/src/Data/models/department_details_model.dart';
import 'package:nans/src/Data/models/department_model.dart';
import 'package:nans/src/Data/models/licenced_company_model.dart';
import 'package:nans/src/Data/models/news_details_model.dart';
import 'package:nans/src/Data/models/news_model.dart';
import 'package:nans/src/Data/models/pagination_data_model.dart';
import 'package:nans/src/Data/models/service_details_model.dart';
import 'package:nans/src/Data/models/service_model.dart';
import 'package:nans/src/Data/repositories/abstract/i_nans_repository.dart';

@Singleton(as: INansRepository)
class NansRepository extends INansRepository {

  NansRepository(super.apiHelper);

  @override
  Future<DepartmentDetailsModel> getDepartmentDetails({required String id}) =>apiHelper.getObject(
        url: 'mobile/department/$id', parameters: {}, mapper:DepartmentDetailsModel.fromJson);
  @override
  Future<PaginationDataModel<DepartmentModel>> getDepartments({required int pageNumber}) =>apiHelper.getPagination(
        url: 'mobile/department', parameters: {'page':pageNumber.toString()},mapper: DepartmentModel.fromJson);

  @override
  Future<NewsDetailsModel> getNewsDetails({required String id}) =>apiHelper.getObject(
        url: 'mobile/news/$id', parameters: {}, mapper:NewsDetailsModel.fromJson);
  @override
  Future<PaginationDataModel<NewsModel>> getNews({required int pageNumber}) =>apiHelper.getPagination(
        url: 'mobile/news', parameters: {'page':pageNumber.toString()},mapper: NewsModel.fromJson);

  @override
  Future<ServiceDetailsModel> getServiceDetails({required String id}) =>apiHelper.getObject(
        url: 'mobile/service/$id', parameters: {}, mapper:ServiceDetailsModel.fromJson);
  @override
  Future<PaginationDataModel<ServiceModel>> getServices({required int pageNumber}) =>apiHelper.getPagination(
        url: 'mobile/service', parameters: {'page':pageNumber.toString()},mapper: ServiceModel.fromJson);

  @override
  Future<PaginationDataModel<ServiceModel>> getServicesOfDepartment({required String departmentId}) =>apiHelper.getPagination(
      url: 'mobile/service/department/$departmentId', parameters: {}, mapper: ServiceModel.fromJson);

  @override
  Future<List<LicencedCompanyModel>> getLicencedCompanies()async=>(await apiHelper.getPagination(url: 'mobile/licencedCompany',
      parameters: {}, mapper: LicencedCompanyModel.fromJson)).items;

} 