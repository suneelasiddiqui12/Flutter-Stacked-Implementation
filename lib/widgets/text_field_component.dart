// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_stacked_implementation/constant/app_colors.dart';
// import 'package:flutter_stacked_implementation/constant/app_images.dart';
// import 'package:flutter_stacked_implementation/constant/font_styles_constant.dart';
// import 'package:flutter_stacked_implementation/constant/presentation_constant.dart';
// import 'package:flutter_stacked_implementation/utils/size_util.dart';
// import 'package:flutter_stacked_implementation/widgets/text_component.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class TextFieldComponent extends StatefulWidget {
//   final TextEditingController controller;
//   final String? hintText;
//   final String? labelText;
//   final bool isPassword;
//   final bool isRequired;
//   final String? Function(String?)? validator;
//   final Function(String _)? onChanged;
//   final TextInputType keyboardType;
//   final int? maxLength;
//   final dynamic suffixIcon;
//   final Function()? onSuffixPressed;
//   final Widget? prefixWidget;
//   final Color fillColor;
//   final bool enlargePrfixWidget;
//   final Color labelColor;
//   final bool readOnly;
//   final bool enabled;
//   final int? maxLines;
//   final VoidCallback? onTap;
//   final FocusNode currentFocus;
//   final FocusNode? nextFocus;
//   final EdgeInsetsGeometry? padding;
//   final bool isLabel;
//   final TextStyle? hintTextStyle;
//   final TextStyle? textStyle;
//   final List<TextInputFormatter>? formatter;
//   final TextAlign textAlign;
//   final Color focusBorderColor;
//   final bool isShadow;
//   final BoxConstraints? suffixIconConstraints;
//   final Color? borderSideColor;
//   final String? errorText;
//   final VoidCallback? onEditingComplete;
//   const TextFieldComponent(
//     this.controller, {
//     Key? key,
//     this.hintText,
//     this.labelText,
//     this.isPassword = false,
//     this.isRequired = false,
//     this.validator,
//     this.onChanged(String _)?,
//     this.keyboardType = TextInputType.text,
//     this.maxLength = 45,
//     this.suffixIcon,
//     this.onSuffixPressed,
//     this.prefixWidget,
//     this.onTap,
//     this.fillColor = AppColors.white,
//     this.enlargePrfixWidget = true,
//     this.labelColor = AppColors.charcoalGrey,
//     this.readOnly = false,
//     this.enabled = true,
//     this.maxLines,
//     required this.currentFocus,
//     this.nextFocus,
//     this.padding,
//     this.isLabel = true,
//     this.hintTextStyle,
//     this.textStyle,
//     this.formatter,
//     this.textAlign = TextAlign.start,
//     this.focusBorderColor = AppColors.black,
//     this.isShadow = true,
//     this.suffixIconConstraints,
//     this.borderSideColor,
//     this.errorText,
//     this.onEditingComplete,
//   }) : super(key: key);

//   @override
//   State<TextFieldComponent> createState() => _TextFieldComponentState();
// }

// class _TextFieldComponentState extends State<TextFieldComponent> {
//   bool hidePassword = true;

//   @override
//   Widget build(BuildContext context) {
//     return widget.isLabel
//         ? Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               _showLabelText(),
//               4.verticalSizedBox,
//               Center(child: textField()),
//             ],
//           )
//         : textField();
//   }

//   Widget textField() {
//     return Container(
//       decoration: BoxDecoration(
//         boxShadow: widget.isShadow
//             ? [
//                 const BoxShadow(
//                   color: AppColors.lightGrey,
//                   offset: Offset(0, 0),
//                   blurRadius: 20,
//                   spreadRadius: 0,
//                 )
//               ]
//             : null,
//       ),
//       child: TextFormField(
//         maxLines: widget.maxLines ?? 1,
//         controller: widget.controller,
//         readOnly: widget.readOnly,
//         focusNode: widget.currentFocus,
//         cursorColor: AppColors.sonicSilver,
//         autovalidateMode: AutovalidateMode.onUserInteraction,
//         enabled: widget.enabled,
//         obscureText: widget.isPassword ? hidePassword : !hidePassword,
//         maxLength: widget.maxLength,
//         textInputAction: widget.keyboardType == TextInputType.multiline
//             ? TextInputAction.newline
//             : widget.nextFocus != null
//                 ? TextInputAction.next
//                 : TextInputAction.done,
//         onTap: widget.onTap,
//         onChanged: (_) =>
//             widget.onChanged == null ? () {} : widget.onChanged!(_),
//         onEditingComplete: () {
//           widget.currentFocus.unfocus();
//           if (widget.nextFocus != null) {
//             widget.nextFocus?.requestFocus();
//           }
//           if (widget.onEditingComplete != null) {
//             widget.onEditingComplete!();
//           }
//         },
//         style: widget.textStyle ??
//             FontStylesConstant.font12(color: AppColors.sonicSilver),
//         validator: widget.validator,
//         keyboardType: widget.keyboardType,
//         inputFormatters: widget.formatter,
//         textAlign: widget.textAlign,
//         decoration: InputDecoration(
//           errorText: widget.errorText,
//           errorStyle: FontStylesConstant.font12(
//             color: AppColors.bostonUniversityRed,
//           ),
//           counterText: '',
//           filled: true,
//           errorMaxLines: 2,
//           fillColor: widget.fillColor,
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(
//               PresentationConstant.textFieldBorderRadius,
//             ),
//             borderSide: widget.borderSideColor != null
//                 ? BorderSide(
//                     color: widget.borderSideColor!,
//                   )
//                 : BorderSide.none,
//           ),
//           disabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(
//               PresentationConstant.textFieldBorderRadius,
//             ),
//             borderSide: widget.borderSideColor != null
//                 ? BorderSide(
//                     color: widget.borderSideColor!,
//                   )
//                 : BorderSide.none,
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(
//               PresentationConstant.textFieldBorderRadius,
//             ),
//             borderSide: widget.borderSideColor != null
//                 ? BorderSide(
//                     color: widget.borderSideColor!,
//                   )
//                 : BorderSide.none,
//           ),
//           errorBorder: OutlineInputBorder(
//             borderSide: const BorderSide(color: AppColors.bostonUniversityRed),
//             borderRadius: BorderRadius.circular(
//                 PresentationConstant.textFieldBorderRadius),
//           ),
//           focusedErrorBorder: OutlineInputBorder(
//             borderSide: const BorderSide(color: AppColors.bostonUniversityRed),
//             borderRadius: BorderRadius.circular(
//                 PresentationConstant.textFieldBorderRadius),
//           ),
//           contentPadding: widget.padding ??
//               EdgeInsetsDirectional.only(
//                   start: 14,
//                   top: 21,
//                   bottom: 21,
//                   end: widget.suffixIcon != null ? 0 : 14),
//           border: InputBorder.none,
//           hintText: widget.hintText ?? '',
//           hintStyle: widget.hintTextStyle ??
//               FontStylesConstant.font12(color: AppColors.sonicSilver),
//           prefixIcon: widget.prefixWidget != null
//               ? SizedBox(
//                   width: widget.enlargePrfixWidget ? 102 : null,
//                   child: widget.prefixWidget,
//                 )
//               : null,
//           suffixIconConstraints: widget.suffixIconConstraints,
//           suffixIcon: widget.isPassword
//               ? GestureDetector(
//                   child: hidePassword
//                       ? Container(
//                           padding: const EdgeInsets.only(right: 14),
//                           child: SvgPicture.asset(
//                             AppImagePaths.vectorRabbitIcon,
//                             width: 16,
//                           ),
//                         )
//                       : Container(
//                           padding: EdgeInsets.only(right: 14),
//                           child: SvgPicture.asset(
//                             AppImagePaths.vectorRabbitIcon,
//                             width: 16,
//                           ),
//                         ),
//                   onTap: () {
//                     setState(() {
//                       hidePassword = !hidePassword;
//                     });
//                   },
//                 )
//               : widget.suffixIcon != null && widget.onSuffixPressed != null
//                   ? GestureDetector(
//                       onTap: widget.onSuffixPressed,
//                       child: widget.suffixIcon.runtimeType == IconData
//                           ? Icon(
//                               widget.suffixIcon,
//                               color: AppColors.greyishThree,
//                             )
//                           : widget.suffixIcon,
//                     )
//                   : widget.suffixIcon,
//         ),
//       ),
//     );
//   }

//   Widget _showLabelText() {
//     if (widget.labelText != null) {
//       return Row(
//         children: [
//           TextComponent(
//             widget.labelText!,
//             style: FontStylesConstant.font12(
//                 color: widget.labelColor, fontWeight: FontWeight.w500),
//           ),
//           TextComponent(
//             widget.isRequired ? '*' : '',
//             style: FontStylesConstant.font12(
//               color: widget.labelColor,
//             ),
//           ),
//         ],
//       );
//     } else {
//       return const SizedBox();
//     }
//   }
// }
