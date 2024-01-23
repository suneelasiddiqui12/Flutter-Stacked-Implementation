import 'package:flutter/material.dart';
import 'package:flutter_stacked_implementation/constant/app_colors.dart';
import 'package:flutter_stacked_implementation/constant/app_images.dart';
import 'package:flutter_stacked_implementation/constant/app_strings.dart';
import 'package:flutter_stacked_implementation/constant/font_styles_constant.dart';
import 'package:flutter_stacked_implementation/ui/views/phone_listing/phone_viewmodel.dart';
import 'package:flutter_stacked_implementation/utils/size_util.dart';
import 'package:flutter_stacked_implementation/widgets/text_component.dart';
import 'package:stacked/stacked.dart';

class PhoneListingView extends StatelessWidget {
  const PhoneListingView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PhoneListingViewModel>.reactive(
      viewModelBuilder: () => PhoneListingViewModel(),
      onViewModelReady: (model) => model.onInit(),
      builder: (context, phoneListingViewModel, child) {
        return Scaffold(
            body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 90.0.flexibleHeight),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextComponent(AppStrings.preferredMobBrand,
                    style:
                        FontStylesConstant.font16(fontWeight: FontWeight.w500)),
              ),
              SizedBox(height: 20.0.flexibleHeight),
              SizedBox(
                height: 58.08.flexibleHeight,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          // Toggle the selected state on tap
                          phoneListingViewModel.isSelected =
                              !phoneListingViewModel.isSelected;
                          // Force the widget to rebuild
                          phoneListingViewModel.notifyListeners();
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4.0),
                          decoration: BoxDecoration(
                            color: AppColors.ghostWhite,
                            border: Border.all(
                              color: phoneListingViewModel.isSelected
                                  ? AppColors.royalBlue
                                  : AppColors.nonPhotoBlue,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          height: 58.08.flexibleHeight,
                          width: 120.47.flexibleWidth,
                          child: Image.network(AppImagePaths.nokiaBrand),
                        ),
                      );
                    }),
              ),
              SizedBox(height: 30.0.flexibleHeight),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextComponent(AppStrings.selectPhone,
                    style:
                        FontStylesConstant.font16(fontWeight: FontWeight.w500)),
              ),
              Expanded(
                child: ListView.builder(
                    //shrinkWrap: true,
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Container(
                          height: 83.13.flexibleHeight,
                          width: 363.71.flexibleWidth,
                          color: AppColors.ghostWhite,
                          child: Center(
                            child: ListTile(
                              leading: Container(
                                  color: Colors.white,
                                  height: 65.94.flexibleHeight,
                                  width: 65.94.flexibleWidth,
                                  child: Image.network(
                                    AppImagePaths.sumsungA54,
                                    height: 52.53.flexibleHeight,
                                    width: 52.53.flexibleWidth,
                                  )),
                              title: FittedBox(
                                child: TextComponent(
                                  AppStrings.deviceName,
                                  style: FontStylesConstant.font16(
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              subtitle: FittedBox(
                                child: TextComponent(
                                  AppStrings.variantName,
                                  style: FontStylesConstant.font14(
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              trailing: FittedBox(
                                child: TextComponent(
                                  AppStrings.asLow,
                                  softWrap: true,
                                  style: FontStylesConstant.font12(
                                      color: AppColors.tuftsBlue,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ));
      },
    );
  }
}
