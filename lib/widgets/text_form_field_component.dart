import 'package:flutter/material.dart';
import 'package:flutter_stacked_implementation/constant/app_colors.dart';

class TextFormFieldComponent extends StatelessWidget {
  final TextEditingController controller;
  final Color? backgroundColor;
  final Color? borderColor;
  final String? hintText;
  final String? labelText;
  final EdgeInsets? contentPadding;

  const TextFormFieldComponent({super.key,
    required this.controller,
    this.backgroundColor,
    this.borderColor,
    this.hintText,
    this.labelText,
    this.contentPadding,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360.0,
      height: 60.8,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          hintStyle: const TextStyle(color: AppColors.quickGray),
          filled: true,
          fillColor: backgroundColor ?? AppColors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.2),
            borderSide: BorderSide(
              color: borderColor ?? AppColors.quickGray,
              width: 1.8,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.2),
            borderSide: const BorderSide(
              color: AppColors.frenchSkyBlue,
              width: 1.8,
            ),
          ),
          contentPadding: contentPadding ?? const EdgeInsets.all(14.4),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter a value';
          }
          return null;
        },
      ),
    );
  }
}
