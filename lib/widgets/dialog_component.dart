import 'package:flutter/material.dart';
import 'package:flutter_stacked_implementation/constant/app_colors.dart';
import 'package:flutter_stacked_implementation/constant/app_images.dart';
import 'package:flutter_stacked_implementation/widgets/button_component.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DialogComponent extends StatelessWidget {
  final String? dialogTitle;
  final String? dialogSubtitle;
  final bool? showCancelButton;
  final Color? backgroundColor;
  final Color? buttonTextColor;
  final String? buttonText;
  final String? addButtonText1;
  final String? addButtonText2;
  final String? headingText;
  final String? contentText;
  final VoidCallback onPressed;
  final double? borderRadius;
  final bool addButton;

  const DialogComponent({
    Key? key,
    required this.buttonText,
    required this.onPressed,
    this.addButton = false,
    this.addButtonText1,
    this.addButtonText2,
    this.dialogTitle,
    this.dialogSubtitle,
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
      backgroundColor: backgroundColor ?? AppColors.white,
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
                      AppImagePaths.vectorCloseIcon,
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
              AppImagePaths.hurrahImg,
              // Replace with the actual path to your logo
              height: 80.0,
              width: 80.0,
              fit: BoxFit.contain,
            ),
          ),
          Text(
            dialogTitle ?? '',
            style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.bold),
          ),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              dialogSubtitle ?? '',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(height: 20.0),
          addButton ?
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonComponent(
                buttonText: addButtonText1 ?? "Next",
                onPressed: onPressed,
                bgColor: AppColors.white,
                buttonTxtColor: AppColors.frenchSkyBlue,
                borderColor: AppColors.transparent,
              ),
              ButtonComponent(
                buttonText: addButtonText2 ?? "Next",
                onPressed: onPressed,
              ),
            ],
          )
          : ButtonComponent(
            buttonText: buttonText ?? "Next",
            onPressed: onPressed,
          ),
          const SizedBox(height: 20.0),

          // Container(
          //   width: double.infinity,
          //   margin: const EdgeInsets.fromLTRB(24, 8, 24, 16),
          //   decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(10.0), // Set border radius here
          //   ),
          //   child: ButtonComponent(
          //     buttonText: buttonText ?? "Next",
          //     onPressed: onPressed,
          //   ),
          // ),
        ],
      ),
    );
  }
}
