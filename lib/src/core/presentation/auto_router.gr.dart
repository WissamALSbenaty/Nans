// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'auto_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      final args =
          routeData.argsAs<AuthRouteArgs>(orElse: () => const AuthRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AuthPage(key: args.key),
      );
    },
    ConfirmPhoneNumberRoute.name: (routeData) {
      final args = routeData.argsAs<ConfirmPhoneNumberRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ConfirmPhoneNumberPage(
          key: args.key,
          args: args.args,
        ),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegisterPage(),
      );
    },
    SubmitNewPasswordRoute.name: (routeData) {
      final args = routeData.argsAs<SubmitNewPasswordRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SubmitNewPasswordPage(
          key: args.key,
          args: args.args,
        ),
      );
    },
    SubmitPhoneNumberRoute.name: (routeData) {
      final args = routeData.argsAs<SubmitPhoneNumberRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SubmitPhoneNumberPage(
          key: args.key,
          args: args.args,
        ),
      );
    },
    DepartmentDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<DepartmentDetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DepartmentDetailsPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    NewsDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<NewsDetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: NewsDetailsPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    ServiceDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ServiceDetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ServiceDetailsPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    FormSubmittingRoute.name: (routeData) {
      final args = routeData.argsAs<FormSubmittingRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: FormSubmittingPage(
          key: args.key,
          serviceDetailsModel: args.serviceDetailsModel,
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
    DepartmentsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DepartmentsPage(),
      );
    },
    NewsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NewsPage(),
      );
    },
    ServicesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ServicesPage(),
      );
    },
    EditAccountRoute.name: (routeData) {
      final args = routeData.argsAs<EditAccountRouteArgs>(
          orElse: () => const EditAccountRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EditAccountPage(key: args.key),
      );
    },
    EditProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EditProfilePage(),
      );
    },
    MyProfileRoute.name: (routeData) {
      final args = routeData.argsAs<MyProfileRouteArgs>(
          orElse: () => const MyProfileRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MyProfilePage(key: args.key),
      );
    },
    NotificationsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NotificationsPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      final args = routeData.argsAs<SettingsRouteArgs>(
          orElse: () => const SettingsRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SettingsPage(key: args.key),
      );
    },
    RequestDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<RequestDetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RequestDetailsPage(
          id: args.id,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [AuthPage]
class AuthRoute extends PageRouteInfo<AuthRouteArgs> {
  AuthRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          AuthRoute.name,
          args: AuthRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const PageInfo<AuthRouteArgs> page = PageInfo<AuthRouteArgs>(name);
}

class AuthRouteArgs {
  const AuthRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key}';
  }
}

/// generated route for
/// [ConfirmPhoneNumberPage]
class ConfirmPhoneNumberRoute
    extends PageRouteInfo<ConfirmPhoneNumberRouteArgs> {
  ConfirmPhoneNumberRoute({
    Key? key,
    required ConfirmEmailPageArguments args,
    List<PageRouteInfo>? children,
  }) : super(
          ConfirmPhoneNumberRoute.name,
          args: ConfirmPhoneNumberRouteArgs(
            key: key,
            args: args,
          ),
          initialChildren: children,
        );

  static const String name = 'ConfirmPhoneNumberRoute';

  static const PageInfo<ConfirmPhoneNumberRouteArgs> page =
      PageInfo<ConfirmPhoneNumberRouteArgs>(name);
}

class ConfirmPhoneNumberRouteArgs {
  const ConfirmPhoneNumberRouteArgs({
    this.key,
    required this.args,
  });

  final Key? key;

  final ConfirmEmailPageArguments args;

  @override
  String toString() {
    return 'ConfirmPhoneNumberRouteArgs{key: $key, args: $args}';
  }
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegisterPage]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute({List<PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SubmitNewPasswordPage]
class SubmitNewPasswordRoute extends PageRouteInfo<SubmitNewPasswordRouteArgs> {
  SubmitNewPasswordRoute({
    Key? key,
    required SubmitNewPasswordArguments args,
    List<PageRouteInfo>? children,
  }) : super(
          SubmitNewPasswordRoute.name,
          args: SubmitNewPasswordRouteArgs(
            key: key,
            args: args,
          ),
          initialChildren: children,
        );

  static const String name = 'SubmitNewPasswordRoute';

  static const PageInfo<SubmitNewPasswordRouteArgs> page =
      PageInfo<SubmitNewPasswordRouteArgs>(name);
}

class SubmitNewPasswordRouteArgs {
  const SubmitNewPasswordRouteArgs({
    this.key,
    required this.args,
  });

  final Key? key;

  final SubmitNewPasswordArguments args;

  @override
  String toString() {
    return 'SubmitNewPasswordRouteArgs{key: $key, args: $args}';
  }
}

/// generated route for
/// [SubmitPhoneNumberPage]
class SubmitPhoneNumberRoute extends PageRouteInfo<SubmitPhoneNumberRouteArgs> {
  SubmitPhoneNumberRoute({
    Key? key,
    required EmailSubmittingArguments args,
    List<PageRouteInfo>? children,
  }) : super(
          SubmitPhoneNumberRoute.name,
          args: SubmitPhoneNumberRouteArgs(
            key: key,
            args: args,
          ),
          initialChildren: children,
        );

  static const String name = 'SubmitPhoneNumberRoute';

  static const PageInfo<SubmitPhoneNumberRouteArgs> page =
      PageInfo<SubmitPhoneNumberRouteArgs>(name);
}

class SubmitPhoneNumberRouteArgs {
  const SubmitPhoneNumberRouteArgs({
    this.key,
    required this.args,
  });

  final Key? key;

  final EmailSubmittingArguments args;

  @override
  String toString() {
    return 'SubmitPhoneNumberRouteArgs{key: $key, args: $args}';
  }
}

/// generated route for
/// [DepartmentDetailsPage]
class DepartmentDetailsRoute extends PageRouteInfo<DepartmentDetailsRouteArgs> {
  DepartmentDetailsRoute({
    Key? key,
    required String id,
    List<PageRouteInfo>? children,
  }) : super(
          DepartmentDetailsRoute.name,
          args: DepartmentDetailsRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'DepartmentDetailsRoute';

  static const PageInfo<DepartmentDetailsRouteArgs> page =
      PageInfo<DepartmentDetailsRouteArgs>(name);
}

class DepartmentDetailsRouteArgs {
  const DepartmentDetailsRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final String id;

  @override
  String toString() {
    return 'DepartmentDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [NewsDetailsPage]
class NewsDetailsRoute extends PageRouteInfo<NewsDetailsRouteArgs> {
  NewsDetailsRoute({
    Key? key,
    required String id,
    List<PageRouteInfo>? children,
  }) : super(
          NewsDetailsRoute.name,
          args: NewsDetailsRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'NewsDetailsRoute';

  static const PageInfo<NewsDetailsRouteArgs> page =
      PageInfo<NewsDetailsRouteArgs>(name);
}

class NewsDetailsRouteArgs {
  const NewsDetailsRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final String id;

  @override
  String toString() {
    return 'NewsDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [ServiceDetailsPage]
class ServiceDetailsRoute extends PageRouteInfo<ServiceDetailsRouteArgs> {
  ServiceDetailsRoute({
    Key? key,
    required String id,
    List<PageRouteInfo>? children,
  }) : super(
          ServiceDetailsRoute.name,
          args: ServiceDetailsRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'ServiceDetailsRoute';

  static const PageInfo<ServiceDetailsRouteArgs> page =
      PageInfo<ServiceDetailsRouteArgs>(name);
}

class ServiceDetailsRouteArgs {
  const ServiceDetailsRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final String id;

  @override
  String toString() {
    return 'ServiceDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [FormSubmittingPage]
class FormSubmittingRoute extends PageRouteInfo<FormSubmittingRouteArgs> {
  FormSubmittingRoute({
    Key? key,
    required ServiceDetailsModel serviceDetailsModel,
    List<PageRouteInfo>? children,
  }) : super(
          FormSubmittingRoute.name,
          args: FormSubmittingRouteArgs(
            key: key,
            serviceDetailsModel: serviceDetailsModel,
          ),
          initialChildren: children,
        );

  static const String name = 'FormSubmittingRoute';

  static const PageInfo<FormSubmittingRouteArgs> page =
      PageInfo<FormSubmittingRouteArgs>(name);
}

class FormSubmittingRouteArgs {
  const FormSubmittingRouteArgs({
    this.key,
    required this.serviceDetailsModel,
  });

  final Key? key;

  final ServiceDetailsModel serviceDetailsModel;

  @override
  String toString() {
    return 'FormSubmittingRouteArgs{key: $key, serviceDetailsModel: $serviceDetailsModel}';
  }
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DepartmentsPage]
class DepartmentsRoute extends PageRouteInfo<void> {
  const DepartmentsRoute({List<PageRouteInfo>? children})
      : super(
          DepartmentsRoute.name,
          initialChildren: children,
        );

  static const String name = 'DepartmentsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NewsPage]
class NewsRoute extends PageRouteInfo<void> {
  const NewsRoute({List<PageRouteInfo>? children})
      : super(
          NewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ServicesPage]
class ServicesRoute extends PageRouteInfo<void> {
  const ServicesRoute({List<PageRouteInfo>? children})
      : super(
          ServicesRoute.name,
          initialChildren: children,
        );

  static const String name = 'ServicesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EditAccountPage]
class EditAccountRoute extends PageRouteInfo<EditAccountRouteArgs> {
  EditAccountRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          EditAccountRoute.name,
          args: EditAccountRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'EditAccountRoute';

  static const PageInfo<EditAccountRouteArgs> page =
      PageInfo<EditAccountRouteArgs>(name);
}

class EditAccountRouteArgs {
  const EditAccountRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'EditAccountRouteArgs{key: $key}';
  }
}

/// generated route for
/// [EditProfilePage]
class EditProfileRoute extends PageRouteInfo<void> {
  const EditProfileRoute({List<PageRouteInfo>? children})
      : super(
          EditProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MyProfilePage]
class MyProfileRoute extends PageRouteInfo<MyProfileRouteArgs> {
  MyProfileRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          MyProfileRoute.name,
          args: MyProfileRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MyProfileRoute';

  static const PageInfo<MyProfileRouteArgs> page =
      PageInfo<MyProfileRouteArgs>(name);
}

class MyProfileRouteArgs {
  const MyProfileRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'MyProfileRouteArgs{key: $key}';
  }
}

/// generated route for
/// [NotificationsPage]
class NotificationsRoute extends PageRouteInfo<void> {
  const NotificationsRoute({List<PageRouteInfo>? children})
      : super(
          NotificationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<SettingsRouteArgs> {
  SettingsRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SettingsRoute.name,
          args: SettingsRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<SettingsRouteArgs> page =
      PageInfo<SettingsRouteArgs>(name);
}

class SettingsRouteArgs {
  const SettingsRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SettingsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [RequestDetailsPage]
class RequestDetailsRoute extends PageRouteInfo<RequestDetailsRouteArgs> {
  RequestDetailsRoute({
    required String id,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          RequestDetailsRoute.name,
          args: RequestDetailsRouteArgs(
            id: id,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'RequestDetailsRoute';

  static const PageInfo<RequestDetailsRouteArgs> page =
      PageInfo<RequestDetailsRouteArgs>(name);
}

class RequestDetailsRouteArgs {
  const RequestDetailsRouteArgs({
    required this.id,
    this.key,
  });

  final String id;

  final Key? key;

  @override
  String toString() {
    return 'RequestDetailsRouteArgs{id: $id, key: $key}';
  }
}
