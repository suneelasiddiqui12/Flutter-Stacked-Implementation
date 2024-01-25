import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stacked_implementation/constant/app_colors.dart';
import 'package:flutter_stacked_implementation/constant/font_styles_constant.dart';
import 'package:flutter_stacked_implementation/utils/size_util.dart';
import 'package:flutter_stacked_implementation/widgets/svg_icon_component.dart';
import 'package:flutter_stacked_implementation/widgets/text_component.dart';

class CardProduct extends StatelessWidget {
  final double? cardHeight;
  final double? cardWidth;
  final double imageHeight;
  final double imageWidth;
  final Color? color;
  final Color? text1Color;
  final Color? text2Color;
  final String? text1;
  final String? text2;
  final double? radius;
  final String icon;
  final FontWeight fontWeight;
  final double fontSize;

  const CardProduct({Key? key,
    this.cardHeight = 40,
    this.cardWidth = 40,
    this.imageHeight = 50,
    this.imageWidth = 50,
    this.color = AppColors.white,
    this.text1Color = AppColors.black,
    this.text2Color = AppColors.quickGray,
    required this.text1,
    required this.text2,
    required this.icon,
    this.fontSize = 20.0,
    this.fontWeight = FontWeight.normal,
    this.radius = 10.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardWidth,
      height: cardHeight,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(radius!)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgIconComponent(
            icon: icon,
            width: imageWidth,
            height: imageHeight,
          ),
          SizedBox(height: 10.flexibleHeight,),
          TextComponent(
            text1 ?? "",
            style: FontStylesConstant.font20(
                color: text1Color!,fontWeight: fontWeight,fontSize: fontSize,),
          ),
          TextComponent(
            text2 ?? "",
            style: FontStylesConstant.font10(color: text2Color!),
          ),
        ],
      ),
    );
  }
}
