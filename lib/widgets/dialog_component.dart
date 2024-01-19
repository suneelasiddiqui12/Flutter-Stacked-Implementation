import 'package:flutter/material.dart';
import 'package:flutter_stacked_implementation/constant/app_images.dart';
import 'package:flutter_stacked_implementation/widgets/button_component.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DialogComponent extends StatelessWidget {
  final bool? showCancelButton;
  final Color? backgroundColor;
  final Color? buttonTextColor;
  final String? buttonText;
  final String? headingText;
  final String? contentText;
  final VoidCallback onPressed;
  final double? borderRadius;

  const DialogComponent({
    Key? key,
    required this.buttonText,
    required this.onPressed,
    this.buttonTextColor,
    this.backgroundColor,
    this.borderRadius,
    this.showCancelButton,
    this.contentText,
    this.headingText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
      ),
      backgroundColor: backgroundColor ?? Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (showCancelButton == true)
            Row(
              children: [
                Expanded(
                  child: Container(), // Placeholder to center icHurrah
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      AppImagePaths.icClose,
                      // Replace with the actual path to your logo
                      height: 20.0,
                      width: 20.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SvgPicture.asset(
              AppImagePaths.icHurrah,
              // Replace with the actual path to your logo
              height: 80.0,
              width: 80.0,
              fit: BoxFit.contain,
            ),
          ),
          const Text(
            'Hurrah',
            style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.bold),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'You have won x data bundle',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(height: 20.0),
          Container(
            width: double.infinity,
            margin:
                const EdgeInsets.only(left: 24, right: 24, top: 10, bottom: 16),
            child: ButtonComponent(
              buttonText: buttonText ?? "Next",
              onPressed: onPressed,
            ),
          ),
        ],
      ),
    );
  }
}
