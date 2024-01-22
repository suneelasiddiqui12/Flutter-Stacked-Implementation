import 'package:flutter/material.dart';
import 'package:flutter_stacked_implementation/constant/app_colors.dart';

class ButtonComponent extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final Color? buttonTxtColor;
  final Color? bgColor;
  final Color? borderColor;
  final double? height;
  final double? width;
  const ButtonComponent({
    Key? key,
    required this.buttonText,
    required this.onPressed,
    this.buttonTxtColor,
    this.bgColor,
    this.borderColor,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 60.0,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor ?? AppColors.royalBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(
                color:
                    borderColor ?? AppColors.transparent), // Add border color
            // Adjust the radius as needed
          ),
        ),
        child: Text(buttonText,
            style: TextStyle(
                color:
                    buttonTxtColor ?? Colors.white) // Change color as needed,
            ),
      ),
    );
  }
}
