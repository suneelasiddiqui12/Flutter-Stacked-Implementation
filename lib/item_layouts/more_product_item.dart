import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stacked_implementation/constant/app_images.dart';
import 'package:flutter_stacked_implementation/utils/size_util.dart';
import 'package:flutter_stacked_implementation/widgets/text_component.dart';

import '../widgets/svg_icon_component.dart';

class MoreProductItem extends StatelessWidget {
  const MoreProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0.flexibleWidth),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SvgIconComponent(
              icon: AppImagePaths.icMobile,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextComponent('Fuel'),
                SvgIconComponent(
                  icon: AppImagePaths.icLocked,
                  width: 20.flexibleWidth,
                  height: 20.flexibleHeight,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
