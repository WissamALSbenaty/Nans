import 'package:nans/src/Data/models/social_media_model.dart';
import 'package:nans/src/Data/repositories/abstract/i_profile_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:nans/src/core/controllers/object_data_loader.dart';

@injectable
class SocialMediaController extends ObjectDataLoader<SocialMediaModel>{

  final IProfileRepository profileRepository;


  SocialMediaController(super.logger,this.profileRepository);
  @override
  Future<SocialMediaModel> dataGetter()=> profileRepository.getSocialMediaAccounts();

}