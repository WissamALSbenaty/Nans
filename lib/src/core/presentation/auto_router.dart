import 'package:auto_route/annotations.dart';
import 'package:etloob/src/core/presentation/pages/confirm_phone_number_page.dart';
import 'package:etloob/src/core/presentation/pages/custom_photo_viewer_page.dart';
import 'package:etloob/src/core/presentation/pages/submit_phone_number_page.dart';
import 'package:etloob/src/features/Home/presentation/pages/home_page.dart';
import 'package:etloob/src/features/auth/presentation/pages/login_page.dart';
import 'package:etloob/src/features/auth/presentation/pages/sign_up_page.dart';
import 'package:etloob/src/features/auth/presentation/pages/submit_new_password_page.dart';
import 'package:etloob/src/features/intro/presentation/pages/onboarding_page.dart';
import 'package:etloob/src/features/intro/presentation/pages/splash_screen.dart';




@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreen, initial: true),
    AutoRoute(page: OnBoardingPage),
    AutoRoute(page: SignUpPage),
    AutoRoute(page: LoginPage),
    AutoRoute(page: ConfirmPhoneNumberPage),
    AutoRoute(page: SubmitNewPasswordPage),
    AutoRoute(page: SubmitPhoneNumberPage),
    AutoRoute(page: HomePage),
    AutoRoute(page: CustomPhotoViewerPage),
  ],
)
class $AppRouter {}
