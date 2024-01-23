import 'package:flutter/material.dart';
import 'package:flutter_stacked_implementation/constant/app_colors.dart';

class TextFormFieldComponent extends StatelessWidget {
  final TextEditingController controller;
  final Color? backgroundColor;
  final Color? borderColor;
  final String? hintText;
  final String? labelText;
  final EdgeInsets? contentPadding;
  final String? Function(String?)? validator;
  final Function(String _)? onChanged;
  final bool isPassword;
  final TextInputType keyboardType;

  const TextFormFieldComponent({super.key,
    required this.controller,
    this.backgroundColor,
    this.borderColor,
    this.hintText,
    this.labelText,
    this.contentPadding,
    this.validator,
    this.onChanged,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    bool hidePassword = true;
    return SizedBox(
      width: 360.0,
      height: 60.8,
      child: TextFormField(
        controller: controller,
        validator: validator,
        onChanged: (_) => onChanged == null ? () {} : onChanged!(_),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        obscureText: isPassword ? hidePassword : !hidePassword,
        keyboardType: keyboardType,
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
      ),
    );
  }
}
