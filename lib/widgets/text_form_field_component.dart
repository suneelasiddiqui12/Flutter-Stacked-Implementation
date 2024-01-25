import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_stacked_implementation/constant/app_images.dart';
import 'package:flutter_stacked_implementation/widgets/svg_icon_component.dart';

class TextFormFieldComponent extends StatefulWidget {
  final TextEditingController controller;
  final Color? backgroundColor;
  final Color? borderColor;
  final String? hintText;
  final String? labelText;
  final FocusNode? nextFocus;
  final bool readOnly;
  final bool enabled;
  final int? maxLength;
  final int? maxLines;
  final TextAlign textAlign;
  final VoidCallback? onEditingComplete;
  final EdgeInsets? contentPadding;
  final String? Function(String?)? validator;
  final Function(String _)? onChanged;
  final bool isPassword;
  final TextInputType keyboardType;
  final List<TextInputFormatter>? inputFormatter;


  const TextFormFieldComponent({
    Key? key,
    required this.controller,
    this.nextFocus,
    this.backgroundColor,
    this.borderColor,
    this.hintText,
    this.labelText,
    this.contentPadding,
    this.validator,
    this.onChanged,
    this.inputFormatter,
    this.textAlign = TextAlign.start,
    this.onEditingComplete,
    this.enabled = true,
    this.maxLength = 45,
    this.maxLines,
    this.readOnly = false,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  @override
  _TextFormFieldComponentState createState() => _TextFormFieldComponentState();
}

class _TextFormFieldComponentState extends State<TextFormFieldComponent> {
  bool hidePassword = true;
  late ValueNotifier<bool> isValid;

  @override
  void initState() {
    super.initState();
    isValid = ValueNotifier<bool>(true);
  }

  @override
  void dispose() {
    isValid.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360.0,
      height: 60.8,
      child: ValueListenableBuilder<bool>(
        valueListenable: isValid,
        builder: (context, isValidValue, child) {
          return TextFormField(
            controller: widget.controller,
            inputFormatters: widget.inputFormatter,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            obscureText: widget.isPassword ? hidePassword : !hidePassword,
            keyboardType: widget.keyboardType,
            readOnly: widget.readOnly,
            enabled: widget.enabled,
            maxLength: widget.maxLength,
            maxLines: widget.maxLines ?? 1,
            textAlign: widget.textAlign,
            textInputAction: widget.keyboardType == TextInputType.multiline
                ? TextInputAction.newline
                : widget.nextFocus != null
                ? TextInputAction.next
                : TextInputAction.done,
            validator: (value) {
              Future.delayed(Duration.zero, () {
                isValid.value = value != null && widget.validator?.call(value) == null;
              });
              return widget.validator?.call(value);
            },
            onChanged: (value) {
              Future.delayed(Duration.zero, () {
                isValid.value = widget.validator?.call(value) == null;
              });
              widget.onChanged?.call(value);
            },
            decoration: InputDecoration(
              hintText: widget.hintText,
              labelText: widget.labelText,
              hintStyle: const TextStyle(color: Colors.grey),
              filled: true,
              fillColor: widget.backgroundColor ?? Colors.white,
              counterText: '',
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
              suffixIcon: widget.controller.text.isNotEmpty
                  ? SvgIconComponent(
                icon: isValidValue
                    ? AppImagePaths.vectorCheckIcon
                    : AppImagePaths.vectorCrossIcon,
                fit: BoxFit.scaleDown,
              )
                  : null,
            ),
          );
        },

      ),
    );
  }
}

