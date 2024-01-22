import 'package:flutter_stacked_implementation/services/local/media_service.dart';
import 'package:flutter_stacked_implementation/ui/views/forms/form_basic_view.dart';
import 'package:flutter_stacked_implementation/ui/views/home/home_view.dart';
import 'package:flutter_stacked_implementation/ui/views/image_picker/image_picker_view.dart';
import 'package:flutter_stacked_implementation/ui/views/onboarding/onboarding_view.dart';
import 'package:flutter_stacked_implementation/ui/views/otp/otp_view.dart';
import 'package:flutter_stacked_implementation/ui/views/splash/splash_view.dart';
import 'package:flutter_stacked_implementation/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartUpView),
    MaterialRoute(page: ImagePickerView),
    MaterialRoute(page: SplashView),
    MaterialRoute(page: OnBoardingView),
    MaterialRoute(page: FormBasicView),
    MaterialRoute(page: OtpView, initial: true),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: MediaService),
  ],
)
class AppSetup {}
