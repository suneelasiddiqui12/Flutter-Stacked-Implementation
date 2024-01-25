import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final List<String> labels;
  final List<IconData> icons;
  final String initialSelectedTab;
  final Color tabIconColor;
  final Color tabSelectedColor;
  final Function(int) onTabItemSelected;

  const CustomBottomNavigationBar({
    Key? key,
    required this.labels,
    required this.icons,
    required this.initialSelectedTab,
    this.tabIconColor = Colors.blue,
    this.tabSelectedColor = Colors.blueGrey,
    required this.onTabItemSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MotionTabBar(
      labels: labels,
      icons: icons,
      initialSelectedTab: initialSelectedTab,
      tabIconColor: tabIconColor,
      tabSelectedColor: tabSelectedColor,
      onTabItemSelected: onTabItemSelected,
    );
  }
}
