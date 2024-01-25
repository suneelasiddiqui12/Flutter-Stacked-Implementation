import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stacked_implementation/constant/app_colors.dart';
import 'package:flutter_stacked_implementation/constant/app_images.dart';
import 'package:flutter_stacked_implementation/constant/font_styles_constant.dart';
import 'package:flutter_stacked_implementation/widgets/text_component.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget{
  final VoidCallback? onLeadingPressed;
  final String? leadingIconPath;
  final String screenName;
  final bool withBackgroundColor;
  final String? title;
  final TextStyle? titleStyle;


  const AppBarComponent({
    Key? key,
    this.onLeadingPressed,
    this.leadingIconPath,
    required this.screenName,
    this.titleStyle,
    this.withBackgroundColor = true,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        toolbarHeight: 45.h,
        centerTitle: true,
        elevation: 0,
        backgroundColor: withBackgroundColor
            ? AppColors.antiFlashWhite
            : AppColors.transparent,
        title: TextComponent(title ?? ""),
        titleTextStyle: titleStyle ??
            FontStylesConstant.font16(
              color: AppColors.antiFlashWhite,
              fontWeight: FontWeight.w700,
            ),
        leading: IconButton(
            onPressed: onLeadingPressed ??
                () {
                  // getIt<NavigationRoute>()
                  //     .pop(context, previousScreen: screenName);
                },
            icon: SvgPicture.asset(
              leadingIconPath ?? AppImagePaths.vectorRabbitIcon,
              width: 6,
              height: 12,
            )),
      ),
    );
  }

  @override
  Size get preferredSize => throw UnimplementedError();
}
