import 'package:nans/src/Data/models/news_details_model.dart';
import 'package:nans/src/Data/repositories/abstract/i_nans_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:nans/src/core/controllers/object_data_loader.dart';

@injectable
class NewsDetailsController extends ObjectDataLoader<NewsDetailsModel>{

  final String newsId;
  final INansRepository nansRepository;

  NewsDetailsController(@factoryParam this.newsId,this.nansRepository,super.logger);


  @override
  Future<NewsDetailsModel> dataGetter ()=>nansRepository.getNewsDetails(id: newsId);
}