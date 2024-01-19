import 'package:flutter/material.dart';
import 'package:flutter_stacked_implementation/constant/app_strings.dart';
import 'package:flutter_stacked_implementation/widgets/button_component.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.worldOf),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: double.infinity, // Full width
            padding: const EdgeInsets.all(16.0),
            child: ButtonComponent(
              buttonText: AppStrings.login,
              onPressed: () {},
            ),
          ),
          Container(
            width: double.infinity, // Full width
            padding: const EdgeInsets.all(16.0),
            child: ButtonComponent(
              buttonText: AppStrings.signUp,
              onPressed: () {},
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
