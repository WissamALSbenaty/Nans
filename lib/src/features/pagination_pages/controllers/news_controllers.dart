import 'package:nans/src/Data/models/news_model.dart';
import 'package:nans/src/Data/models/pagination_data_model.dart';
import 'package:nans/src/Data/repositories/abstract/i_nans_repository.dart';
import 'package:nans/src/core/controllers/pagination_list_data_loader.dart';
import 'package:injectable/injectable.dart';

@injectable
class NewsController extends PaginationListDataLoader<NewsModel>{

  final INansRepository nansRepository;

  NewsController(this.nansRepository,super.logger);

  @override
  Future<PaginationDataModel<NewsModel>> paginationGetter(int page) => nansRepository.getNews(pageNumber: pageNumber);

}