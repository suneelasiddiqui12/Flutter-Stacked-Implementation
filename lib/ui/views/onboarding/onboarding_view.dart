import 'package:flutter/material.dart';
import 'package:flutter_stacked_implementation/app/app.router.dart';
import 'package:flutter_stacked_implementation/constant/app_strings.dart';
import 'package:flutter_stacked_implementation/services/local/navigation_services.dart';
import 'package:flutter_stacked_implementation/widgets/button_component.dart';
import 'package:flutter_stacked_implementation/widgets/dialog_component.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constant/app_images.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Logo at the top, centered horizontally
          Positioned(
            top: MediaQuery.of(context).size.height * 0.1, // Center vertically
            left: MediaQuery.of(context).size.width /
                4, // Adjust the distance from the left
            child: Center(
              child: SvgPicture.asset(
                AppImagePaths.ic_logo_blue,
                width: 70.0, // Adjust the width of the logo as needed
                height: 70.0, // Adjust the height of the logo as needed
              ),
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
