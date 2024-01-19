import 'package:flutter/material.dart';
import 'package:flutter_stacked_implementation/constant/app_strings.dart';
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
          // Heading text in the center-left
          Positioned(
            top: MediaQuery.of(context).size.height /
                2, // Adjust the vertical position
            left: 20.0, // Adjust the distance from the left
            child: const Text(
              "Welcome to\nKistpay!",
              style: TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Button at the bottom
          Positioned(
            bottom: 20.0, // Adjust the distance from the bottom
            left: 20.0, // Adjust the distance from the left
            child: Container(
              width: MediaQuery.of(context).size.width -
                  40.0, // Full width with padding
              padding: const EdgeInsets.all(16.0),
              child: ButtonComponent(
                buttonText: AppStrings.getStarted,
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return DialogComponent(
                            buttonText: "Proceed to your application",
                            showCancelButton: false,
                            onPressed: () {});
                      });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
