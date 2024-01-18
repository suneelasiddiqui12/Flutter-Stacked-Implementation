import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, homeViewModel, child) => Scaffold(
        body: Center(
          child: Text(homeViewModel.title),
        ),
        floatingActionButton:
            FloatingActionButton(onPressed: homeViewModel.getMockData),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
