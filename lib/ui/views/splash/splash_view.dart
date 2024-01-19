import 'package:flutter/material.dart';
import 'package:flutter_stacked_implementation/constant/app_images.dart';
import 'package:flutter_stacked_implementation/ui/views/splash/splash_viewmodel.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';

class SplashView extends StatelessWidget {

  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
        viewModelBuilder: () => SplashViewModel(),
        onViewModelReady: (model) => model.onInit(),
        builder: (context, splashViewModel, child) {
          return Scaffold(
            body: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.blue,
              // decoration: const BoxDecoration(
              //   image: DecorationImage(
              //       image: AssetImage(AppImagePaths.splashImg),
              //       fit: BoxFit.cover),
              // ),
              child: Stack(
                children: [
                  Center(
                    child: SvgPicture.asset(AppImagePaths.splashImg),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
