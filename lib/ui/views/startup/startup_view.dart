import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'startup_view_model.dart';

class StartUpView extends StatelessWidget {
  const StartUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartUpViewModel>.reactive(
      builder: (context, homeViewModel, child) => Scaffold(
        body: Center(
          child: Text(homeViewModel.title),
        ),
        floatingActionButton:
            FloatingActionButton(onPressed: homeViewModel.updateCounter),
      ),
      viewModelBuilder: () => StartUpViewModel(),
    );
  }
}
