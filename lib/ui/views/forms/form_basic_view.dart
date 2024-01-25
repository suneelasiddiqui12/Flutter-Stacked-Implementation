import 'package:flutter/material.dart';
import 'package:flutter_stacked_implementation/app/app.router.dart';
import 'package:flutter_stacked_implementation/services/local/navigation_services.dart';
import 'package:flutter_stacked_implementation/ui/views/forms/form_basic_viewmodel.dart';
import 'package:flutter_stacked_implementation/utils/validation_util.dart';
import 'package:flutter_stacked_implementation/widgets/button_component.dart';
import 'package:flutter_stacked_implementation/widgets/text_component.dart';
import 'package:flutter_stacked_implementation/widgets/text_form_field_component.dart';
import 'package:stacked/stacked.dart';

class FormBasicView extends StatelessWidget {
  const FormBasicView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FormBasicViewModel>.reactive(
        viewModelBuilder: () => FormBasicViewModel(),
        builder: (context, model, child) => Scaffold(
                body: SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Form(
                      key: model.formKey,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const TextComponent(
                              'NAME',
                            ),
                            TextFormFieldComponent(
                              hintText: 'abcdefgh@11!',
                              controller: model.nameController,
                              validator: (value) => validateName(value),
                            ),
                            const TextComponent('CNIC'),
                            TextFormFieldComponent(
                              hintText: '42201-XXXXXXXXX-X',
                              controller: model.cnicController,
                              keyboardType: TextInputType.phone,
                              validator: (value) => validateCnic(value),
                            ),
                            const TextComponent('PHONE'),
                            TextFormFieldComponent(
                              hintText: '+92 332XXXXXX',
                              controller: model.phoneNumberController,
                              keyboardType: TextInputType.phone,
                              validator: (value) => validateNumber(value),
                            ),
                          ]),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ButtonComponent(
                          buttonText: 'Next',
                          onPressed: () {
                            model.formKey.currentState!.validate()
                                ? NavService.navigateTo(Routes.onBoardingScreen)
                                : const Text('ABCDEF');
                          }),
                    )
                  ],
                ),
              ),
            )));
  }
}
