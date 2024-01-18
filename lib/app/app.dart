import 'package:flutter_stacked_implementation/ui/views/home/home_view.dart';
import 'package:flutter_stacked_implementation/ui/views/image_picker/image_picker_view.dart';
import 'package:flutter_stacked_implementation/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, initial: true),
    MaterialRoute(page: StartUpView),
    MaterialRoute(page: ImagePickerView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
  ],
)
class AppSetup {}
