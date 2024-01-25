import 'package:flutter_stacked_implementation/app/app.router.dart';
import 'package:flutter_stacked_implementation/services/local/navigation_services.dart';
import 'package:stacked/stacked.dart';

class SplashViewModel extends BaseViewModel {


  Future<void> onInit() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    NavService.navigateTo(Routes.onBoardingScreen);
  }

  // void onUserAuth() async {
  //   final SharedPreferences sp = await SharedPreferences.getInstance();
  //   final bool? isUserLogin = sp.getBool("isUserLogin");

  //   userViewModel
  //       .getUserId()
  //       .then((value) => {
  //             if (value != null || value.runtimeType != Null)
  //               {NavService.navView(), notifyListeners()}
  //             else if (isUserLogin == true && value == null)
  //               {NavService.loginView()}
  //             else
  //               {NavService.welcome()},
  //           })
  //       .onError((error, stackTrace) => {
  //             if (error != null) {NavService.showSnackbar("Error", "$error")}
  //           });
  // }


}
