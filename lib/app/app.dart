import 'package:flutter_stacked_implementation/services/local/media_service.dart';
import 'package:flutter_stacked_implementation/ui/views/form_advance/form_advance_view.dart';
import 'package:flutter_stacked_implementation/ui/views/forms/form_basic_view.dart';
import 'package:flutter_stacked_implementation/ui/views/home/home_view.dart';
import 'package:flutter_stacked_implementation/ui/views/image_picker/image_picker_view.dart';
import 'package:flutter_stacked_implementation/ui/views/onboarding/onboarding_view.dart';
import 'package:flutter_stacked_implementation/ui/views/otp/otp_view.dart';
import 'package:flutter_stacked_implementation/ui/views/phone_listing/phone_listing_view.dart';
import 'package:flutter_stacked_implementation/ui/views/splash/splash_view.dart';
import 'package:flutter_stacked_implementation/ui/views/startup/startup_view.dart';
import 'package:flutter_stacked_implementation/ui/views/variant/variant_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, initial: true),
    MaterialRoute(page: StartUpView),
    MaterialRoute(page: ImagePickerView),
    MaterialRoute(page: SplashView, initial: true),
    MaterialRoute(page: OnBoardingScreen),
    MaterialRoute(page: FormBasicView),
    MaterialRoute(page: OtpView),
    MaterialRoute(page: PhoneListingView),
    MaterialRoute(page: VariantView),
    MaterialRoute(page: FormAdvanceView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: MediaService),
  ],
)
class AppSetup {}
