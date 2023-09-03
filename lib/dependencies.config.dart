// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'src/core/controllers/app_controller.dart' as _i32;
import 'src/core/presentation/arguments/confirm_phone_number_page_arguments.dart'
    as _i34;
import 'src/core/presentation/arguments/phone_number_submitting_arguments.dart'
    as _i31;
import 'src/core/presentation/arguments/submit_new_password_arguments.dart'
    as _i29;
import 'src/core/util/localization_manager.dart' as _i7;
import 'src/core/util/notification_manager.dart' as _i8;
import 'src/Data/api_helper.dart' as _i9;
import 'src/Data/Errors/errors_factory.dart' as _i4;
import 'src/Data/local_database_tables/app_database.dart' as _i3;
import 'src/Data/models/service_details_model.dart' as _i38;
import 'src/Data/repositories/abstract/i_auth_repository.dart' as _i10;
import 'src/Data/repositories/abstract/i_logger.dart' as _i5;
import 'src/Data/repositories/abstract/i_nans_repository.dart' as _i12;
import 'src/Data/repositories/abstract/i_profile_repository.dart' as _i14;
import 'src/Data/repositories/abstract/i_requests_repository.dart' as _i16;
import 'src/Data/repositories/abstract/i_utils_repository.dart' as _i18;
import 'src/Data/repositories/concret/auth_repository.dart' as _i11;
import 'src/Data/repositories/concret/logger.dart' as _i6;
import 'src/Data/repositories/concret/nans_repository.dart' as _i13;
import 'src/Data/repositories/concret/profile_repository.dart' as _i15;
import 'src/Data/repositories/concret/requests_repository.dart' as _i17;
import 'src/Data/repositories/concret/utils_repotsitory.dart' as _i19;
import 'src/features/auth/controllers/confirm_phone_number_controller.dart'
    as _i33;
import 'src/features/auth/controllers/login_store.dart' as _i40;
import 'src/features/auth/controllers/register_controller.dart' as _i41;
import 'src/features/auth/controllers/submitting_new_password_controller.dart'
    as _i28;
import 'src/features/auth/controllers/submitting_phone_number_controller.dart'
    as _i30;
import 'src/features/details/controllers/department_details_controller.dart'
    as _i35;
import 'src/features/details/controllers/news_details_controller.dart' as _i22;
import 'src/features/details/controllers/service_details_controller.dart'
    as _i25;
import 'src/features/dynamic_forms/controllers/dynamic_form_controller.dart'
    as _i37;
import 'src/features/Home/controllers/main_page_controller.dart' as _i20;
import 'src/features/pagination_pages/controllers/departments_controllers.dart'
    as _i36;
import 'src/features/pagination_pages/controllers/news_controllers.dart'
    as _i21;
import 'src/features/pagination_pages/controllers/services_controllers.dart'
    as _i26;
import 'src/features/Profile/controllers/edit_profile_controller.dart' as _i39;
import 'src/features/Profile/controllers/notifications_controller.dart' as _i23;
import 'src/features/Profile/controllers/social_media_controller.dart' as _i27;
import 'src/features/request/controllers/request_details_controller.dart'
    as _i42;
import 'src/features/request/controllers/requests_controller.dart' as _i24;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.singleton<_i3.AppDatabase>(_i3.AppDatabase());
  gh.singleton<_i4.ErrorsFactory>(_i4.ErrorsFactory());
  gh.singleton<_i5.ILogger>(_i6.Logger());
  gh.singleton<_i7.LocalizationManager>(_i7.LocalizationManager());
  gh.singleton<_i8.NotificationsManager>(_i8.NotificationsManager());
  gh.singleton<_i9.ApiHelper>(_i9.ApiHelper(
    gh<_i4.ErrorsFactory>(),
    gh<_i7.LocalizationManager>(),
  ));
  gh.singleton<_i10.IAuthRepository>(_i11.AuthRepository(
    gh<_i9.ApiHelper>(),
    gh<_i3.AppDatabase>(),
  ));
  gh.singleton<_i12.INansRepository>(_i13.NansRepository(gh<_i9.ApiHelper>()));
  gh.singleton<_i14.IProfileRepository>(
      _i15.ProfileRepository(gh<_i9.ApiHelper>()));
  gh.singleton<_i16.IRequestsRepository>(
      _i17.RequestsRepository(gh<_i9.ApiHelper>()));
  gh.singleton<_i18.IUtilsRepository>(
      _i19.UtilsRepository(gh<_i9.ApiHelper>()));
  gh.factory<_i20.MainPageController>(() => _i20.MainPageController(
        gh<_i12.INansRepository>(),
        gh<_i5.ILogger>(),
      ));
  gh.factory<_i21.NewsController>(() => _i21.NewsController(
        gh<_i12.INansRepository>(),
        gh<_i5.ILogger>(),
      ));
  gh.factoryParam<_i22.NewsDetailsController, String, dynamic>((
    newsId,
    _,
  ) =>
      _i22.NewsDetailsController(
        newsId,
        gh<_i12.INansRepository>(),
        gh<_i5.ILogger>(),
      ));
  gh.factory<_i23.NotificationsController>(() => _i23.NotificationsController(
        gh<_i14.IProfileRepository>(),
        gh<_i5.ILogger>(),
      ));
  gh.factory<_i24.RequestsController>(() => _i24.RequestsController(
        gh<_i5.ILogger>(),
        gh<_i16.IRequestsRepository>(),
      ));
  gh.factoryParam<_i25.ServiceDetailsController, String, dynamic>((
    newsId,
    _,
  ) =>
      _i25.ServiceDetailsController(
        newsId,
        gh<_i12.INansRepository>(),
        gh<_i5.ILogger>(),
      ));
  gh.factory<_i26.ServicesController>(() => _i26.ServicesController(
        gh<_i12.INansRepository>(),
        gh<_i5.ILogger>(),
      ));
  gh.factory<_i27.SocialMediaController>(() => _i27.SocialMediaController(
        gh<_i5.ILogger>(),
        gh<_i14.IProfileRepository>(),
      ));
  gh.factoryParam<_i28.SubmittingNewPasswordController,
      _i29.SubmitNewPasswordArguments, dynamic>((
    args,
    _,
  ) =>
      _i28.SubmittingNewPasswordController(
        args,
        gh<_i10.IAuthRepository>(),
        gh<_i5.ILogger>(),
      ));
  gh.factoryParam<_i30.SubmittingPhoneNumberController,
      _i31.EmailSubmittingArguments, dynamic>((
    args,
    _,
  ) =>
      _i30.SubmittingPhoneNumberController(
        args,
        gh<_i10.IAuthRepository>(),
        gh<_i5.ILogger>(),
      ));
  gh.singleton<_i32.AppController>(_i32.AppController(
    gh<_i10.IAuthRepository>(),
    gh<_i18.IUtilsRepository>(),
    gh<_i3.AppDatabase>(),
    gh<_i7.LocalizationManager>(),
    gh<_i8.NotificationsManager>(),
    gh<_i5.ILogger>(),
  ));
  gh.factoryParam<_i33.ConfirmPhoneNumberController,
      _i34.ConfirmEmailPageArguments, dynamic>((
    args,
    _,
  ) =>
      _i33.ConfirmPhoneNumberController(
        args,
        gh<_i10.IAuthRepository>(),
        gh<_i5.ILogger>(),
      ));
  gh.factoryParam<_i35.DepartmentDetailsController, String, dynamic>((
    departmentId,
    _,
  ) =>
      _i35.DepartmentDetailsController(
        departmentId,
        gh<_i12.INansRepository>(),
        gh<_i5.ILogger>(),
      ));
  gh.factory<_i36.DepartmentsController>(() => _i36.DepartmentsController(
        gh<_i12.INansRepository>(),
        gh<_i5.ILogger>(),
      ));
  gh.factoryParam<_i37.DynamicFormController, _i38.ServiceDetailsModel,
      dynamic>((
    serviceDetailsModel,
    _,
  ) =>
      _i37.DynamicFormController(
        serviceDetailsModel,
        gh<_i16.IRequestsRepository>(),
        gh<_i5.ILogger>(),
      ));
  gh.factory<_i39.EditProfileController>(() => _i39.EditProfileController(
        gh<_i10.IAuthRepository>(),
        gh<_i32.AppController>(),
        gh<_i5.ILogger>(),
      ));
  gh.factory<_i40.LoginController>(() => _i40.LoginController(
        gh<_i10.IAuthRepository>(),
        gh<_i32.AppController>(),
        gh<_i5.ILogger>(),
      ));
  gh.factory<_i41.RegisterController>(() => _i41.RegisterController(
        gh<_i32.AppController>(),
        gh<_i10.IAuthRepository>(),
        gh<_i5.ILogger>(),
      ));
  gh.factoryParam<_i42.RequestDetailsController, String, dynamic>((
    requestId,
    _,
  ) =>
      _i42.RequestDetailsController(
        requestId,
        gh<_i16.IRequestsRepository>(),
        gh<_i32.AppController>(),
        gh<_i5.ILogger>(),
      ));
  return getIt;
}
