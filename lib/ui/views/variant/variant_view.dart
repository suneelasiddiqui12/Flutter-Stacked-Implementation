import 'package:flutter/material.dart';
import 'package:flutter_stacked_implementation/constant/app_colors.dart';
import 'package:flutter_stacked_implementation/constant/app_images.dart';
import 'package:flutter_stacked_implementation/constant/app_strings.dart';
import 'package:flutter_stacked_implementation/constant/font_styles_constant.dart';
import 'package:flutter_stacked_implementation/ui/views/variant/variant_viewmodel.dart';
import 'package:flutter_stacked_implementation/utils/size_util.dart';
import 'package:flutter_stacked_implementation/widgets/button_component.dart';
import 'package:flutter_stacked_implementation/widgets/text_component.dart';
import 'package:stacked/stacked.dart';

class VariantView extends StatelessWidget {
  const VariantView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => VariantViewModel(),
        onViewModelReady: (model) => model.onInit(),
        builder: (context, variantViewModel, child) {
          return Scaffold(
            backgroundColor: AppColors.brightGray,
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 70.flexibleHeight),
                  Center(
                    child: Container(
                      color: Colors.white,
                      height: 264.flexibleHeight,
                      width: 320.flexibleWidth,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 194.flexibleHeight,
                              width: 152.flexibleWidth,
                              child: Image.network(AppImagePaths.sumsungA54)),
                          SizedBox(height: 10.flexibleHeight),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextComponent(AppStrings.deviceName,
                                    style: FontStylesConstant.font16(
                                        fontWeight: FontWeight.w600)),
                                TextComponent(AppStrings.asLow2,
                                    style: FontStylesConstant.font14(
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.tuftsBlue))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20.flexibleHeight),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: TextComponent(AppStrings.chooseRam,
                        style: FontStylesConstant.font18(
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                  SizedBox(height: 15.flexibleHeight),
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: SizedBox(
                      height: 42.flexibleHeight,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            List<String> ramList = ['6GB', '8GB', '12GB'];
                            bool isRamSelected =
                                variantViewModel.isRamSelected == index;
                            return GestureDetector(
                              onTap: () {
                                // Toggle the selected state on tap
                                variantViewModel.isRamSelected = index;
                                // Force the widget to rebuild
                                variantViewModel.notifyListeners();
                              },
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                decoration: BoxDecoration(
                                  color: isRamSelected
                                      ? AppColors.blue
                                      : AppColors.transparent,
                                  border: Border.all(
                                    color: isRamSelected
                                        ? AppColors.royalBlue
                                        : AppColors.americanSilver,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                height: 42.flexibleHeight,
                                width: 75.flexibleWidth,
                                child: Center(
                                  child: TextComponent(
                                    ramList[index],
                                    style: FontStylesConstant.font16(
                                        fontWeight: FontWeight.w400,
                                        color: isRamSelected
                                            ? AppColors.white
                                            : AppColors.black),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                  SizedBox(height: 20.flexibleHeight),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: TextComponent(AppStrings.chooseStorage,
                        style: FontStylesConstant.font18(
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                  SizedBox(height: 15.flexibleHeight),
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: SizedBox(
                      height: 42.flexibleHeight,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            List<String> romList = ['16GB', '32GB', '64GB'];
                            bool isRomSelected =
                                variantViewModel.isRomSelected == index;
                            return GestureDetector(
                              onTap: () {
                                // Toggle the selected state on tap
                                variantViewModel.isRomSelected = index;
                                // Force the widget to rebuild
                                variantViewModel.notifyListeners();
                              },
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                decoration: BoxDecoration(
                                  color: isRomSelected
                                      ? AppColors.blue
                                      : AppColors.transparent,
                                  border: Border.all(
                                    color: isRomSelected
                                        ? AppColors.royalBlue
                                        : AppColors.americanSilver,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                height: 42.flexibleHeight,
                                width: 75.flexibleWidth,
                                child: Center(
                                  child: TextComponent(
                                    romList[index],
                                    style: FontStylesConstant.font16(
                                        fontWeight: FontWeight.w400,
                                        color: isRomSelected
                                            ? AppColors.white
                                            : AppColors.black),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                  SizedBox(height: 20.flexibleHeight),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: TextComponent(AppStrings.chooseColor,
                        style: FontStylesConstant.font18(
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                  SizedBox(height: 10.flexibleHeight),
                  SizedBox(
                    height: 44.2.flexibleHeight,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            List<Color> colors = [
                              Colors.red,
                              Colors.blue,
                              Colors.green,
                              Colors.yellow,
                              Colors.orange,
                              // Add more colors as needed
                            ];
                            bool isColorSelected =
                                variantViewModel.selectedColorIndex == index;
                            return GestureDetector(
                              onTap: () {
                                variantViewModel.selectedColorIndex = index;
                                // // Toggle the selected state on tap

                                // Force the widget to rebuild
                                variantViewModel.notifyListeners();
                              },
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: isColorSelected
                                          ? AppColors.royalBlue
                                          : AppColors.americanSilver,
                                      width: isColorSelected ? 3.0 : 1.0),
                                ),
                                height: 44.2.flexibleHeight,
                                width: 50.flexibleWidth,
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colors[index],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                  SizedBox(height: 30.flexibleHeight),
                  Row(children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 26.0),
                        child: ButtonComponent(
                          buttonText: AppStrings.next,
                          onPressed: () {
                            // NavService.navigateTo(Routes.formBasicView);
                          },
                        ),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          );
        });
  }
}
