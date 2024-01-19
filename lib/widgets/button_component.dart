import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final Color? buttonTxtColor;
  final Color? bgColor;
  final Color? borderColor;

  const ButtonComponent({
    Key? key,
    required this.buttonText,
    required this.onPressed,
    this.buttonTxtColor,
    this.bgColor,
    this.borderColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor ?? Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: borderColor ?? Colors.transparent), // Add border color
          // Adjust the radius as needed
        ),
      ),
      child: Text(
          buttonText,
          style: TextStyle(color: buttonTxtColor ?? Colors.white)// Change color as needed,
      ),
    );
  }
}
