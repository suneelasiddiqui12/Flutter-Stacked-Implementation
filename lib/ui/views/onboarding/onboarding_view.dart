import 'package:flutter/material.dart';
import 'package:flutter_stacked_implementation/app/app.router.dart';
import 'package:flutter_stacked_implementation/constant/app_colors.dart';
import 'package:flutter_stacked_implementation/constant/app_strings.dart';
import 'package:flutter_stacked_implementation/services/local/navigation_services.dart';
import 'package:flutter_stacked_implementation/widgets/button_component.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.worldOf),
        centerTitle: true,
      ),
      backgroundColor: AppColors.brightGray,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: double.infinity, // Full width
            padding: const EdgeInsets.all(16.0),
            child: ButtonComponent(
              buttonText: AppStrings.login,
              onPressed: () {
                NavService.navigateTo(Routes.formBasicView);
              },
            ),
          ),
          Container(
            width: double.infinity, // Full width
            padding: const EdgeInsets.all(16.0),
            child: ButtonComponent(
              buttonText: AppStrings.signUp,
              onPressed: () {
                NavService.navigateTo(Routes.formAdvanceView);
              },
              bgColor: Colors.white,
              buttonTxtColor: Colors.black,
              borderColor: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}


