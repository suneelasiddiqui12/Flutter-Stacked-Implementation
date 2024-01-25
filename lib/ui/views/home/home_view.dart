import 'package:flutter/material.dart';
import 'package:flutter_stacked_implementation/constant/app_colors.dart';
import 'package:flutter_stacked_implementation/constant/app_images.dart';
import 'package:flutter_stacked_implementation/constant/font_styles_constant.dart';
import 'package:flutter_stacked_implementation/item_layouts/more_product_item.dart';
import 'package:flutter_stacked_implementation/utils/size_util.dart';
import 'package:flutter_stacked_implementation/widgets/bottom_navigation_component.dart';
import 'package:stacked/stacked.dart';

import '../../../widgets/card_product.dart';
import '../../../widgets/svg_icon_component.dart';
import '../../../widgets/text_component.dart';
import 'home_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, homeViewModel, child) => Scaffold(
        backgroundColor: AppColors.brightGray,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(36.0, 40.0, 36.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // for dynamically handle text size if widget width gets shrink on diff devices
                  FittedBox(
                    child: TextComponent("Hey! What do you \nwant?",
                        style: FontStylesConstant.font20Bold()),
                  ),
                  SvgIconComponent(
                    icon: AppImagePaths.icProfile,
                    height: 50.flexibleHeight,
                    width: 50.flexibleWidth,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0.flexibleHeight,
            ),
            CardProduct(
              text1: 'Mobile Phone',
              text2: 'As low as Rs.1200/mon',
              icon: AppImagePaths.icMobile,
              cardHeight: 150.0.flexibleHeight,
              cardWidth: 320.0.flexibleWidth,
              imageWidth: 60.flexibleWidth,
              imageHeight: 60.flexibleHeight,
              fontWeight: FontWeight.bold,
              text1Color: AppColors.darkBlue,
              color: AppColors.lightBlue,
            ),
            SizedBox(
              height: 10.0.flexibleHeight,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CardProduct(
                  text1: 'Cash Line',
                  text2: 'As high as Rs. 3000/week',
                  icon: AppImagePaths.icCash,
                  cardHeight: 200.0,
                  cardWidth: 150.0,
                  imageWidth: 50,
                  imageHeight: 50,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  text1Color: AppColors.darkOrange,
                  color: AppColors.lightOrange,
                ),
                CardProduct(
                  text1: 'Telco Bundles',
                  text2: 'As low as Rs. 30/week',
                  icon: AppImagePaths.icReward,
                  cardHeight: 200.0,
                  cardWidth: 150.0,
                  imageWidth: 50,
                  imageHeight: 50,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.lightGreen,
                  text1Color: AppColors.darkGreen,
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30.0, 10.0, 0.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextComponent(
                    "More Products",
                    style: FontStylesConstant.font16(
                        fontWeight: FontWeight.bold,
                        color: AppColors.royalBlue),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: GridView.builder(
                  // physics: NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, // number of items in each row
                    mainAxisSpacing: 8.0, // spacing between rows
                    crossAxisSpacing: 8.0, // spacing between columns
                  ),
                  padding: const EdgeInsets.all(8.0),
                  // padding around the grid
                  itemCount: homeViewModel.list.length,
                  // total number of items
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: MoreProductItem(),
                    );
                  },
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: CustomBottomNavigationBar(
          labels: const ["Home", "Rewards", "Profile"],
          icons: const [
            Icons.home,
            Icons.wallet,
            Icons.person,
          ],
          initialSelectedTab: "Home",
          onTabItemSelected: (int tabIndex) {
            // Handle tab selection here
            // You can call methods in your view model based on the selected tab
            // Example: homeViewModel.onTabSelected(tabIndex);
          },
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
