import 'package:nans/src/Data/models/notification_model.dart';
import 'package:nans/src/Data/models/pagination_data_model.dart';
import 'package:nans/src/Data/models/social_media_model.dart';
import 'package:nans/src/Data/repositories/abstract/i_profile_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: IProfileRepository)
class ProfileRepository extends IProfileRepository {

  ProfileRepository(super.apiHelper);


  @override
  Future<PaginationDataModel<NotificationModel>> getNotifications({required int pageNumber})=>apiHelper.getPagination(url: 'mobile/notification',
      parameters: {}, mapper: NotificationModel.fromJson);

  @override
  Future<SocialMediaModel> getSocialMediaAccounts()async {
/*    Map<String,dynamic> data=(await apiHelper.get(url: 'Settings/SocialMedia', parameters: {})).data;
    return SocialMediaModel.fromJson(data);*/
  return SocialMediaModel(phoneNumber: '', whatsapp: '', instagram: '', facebook: '');
  }


}