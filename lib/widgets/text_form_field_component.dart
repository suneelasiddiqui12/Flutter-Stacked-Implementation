import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldComponent extends StatefulWidget {
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
  final List<TextInputFormatter>? inputFormatter;


  const TextFormFieldComponent({
    Key? key,
    required this.controller,
    this.backgroundColor,
    this.borderColor,
    this.hintText,
    this.labelText,
    this.contentPadding,
    this.validator,
    this.onChanged,
    this.inputFormatter,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  @override
  _TextFormFieldComponentState createState() => _TextFormFieldComponentState();
}

class _TextFormFieldComponentState extends State<TextFormFieldComponent> {
  bool hidePassword = true;
  bool isValid = true; // Track validation status

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360.0,
      height: 60.8,
      child: TextFormField(
        controller: widget.controller,
        inputFormatters: widget.inputFormatter,
        validator: (value) {
          Future.delayed(Duration.zero, () {
            setState(() {
              isValid = value != null && widget.validator?.call(value) == null;
            });
          });
          return widget.validator?.call(value);
        },
        onChanged: (value) {
          Future.delayed(Duration.zero, () {
            setState(() {
              isValid = widget.validator?.call(value) == null;
            });
          });
          widget.onChanged?.call(value);
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        obscureText: widget.isPassword ? hidePassword : !hidePassword,
        keyboardType: widget.keyboardType,
        decoration: InputDecoration(
          hintText: widget.hintText,
          labelText: widget.labelText,
          hintStyle: const TextStyle(color: Colors.grey),
          filled: true,
          fillColor: widget.backgroundColor ?? Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.2),
            borderSide: BorderSide(
              color: widget.borderColor ?? Colors.grey,
              width: 1.8,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.2),
            borderSide: const BorderSide(
              color: Colors.blue,
              width: 1.8,
            ),
          ),
          contentPadding: widget.contentPadding ?? const EdgeInsets.all(14.4),
          suffixIcon: isValid && widget.controller.text.isNotEmpty
              ? const Icon(
            Icons.check,
            color: Colors.green,
          )
              : null,
        ),
      ),
    );
  }
}

