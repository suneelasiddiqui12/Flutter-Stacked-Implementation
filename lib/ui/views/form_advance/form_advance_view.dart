import 'package:flutter/material.dart';
import 'package:flutter_stacked_implementation/constant/app_strings.dart';
import 'package:flutter_stacked_implementation/ui/views/form_advance/form_advance_viewmodel.dart';
import 'package:flutter_stacked_implementation/utils/validation_util.dart';
import 'package:flutter_stacked_implementation/widgets/button_component.dart';
import 'package:flutter_stacked_implementation/widgets/dialog_component.dart';
import 'package:flutter_stacked_implementation/widgets/text_component.dart';
import 'package:flutter_stacked_implementation/widgets/text_form_field_component.dart';
import 'package:stacked/stacked.dart';

class FormAdvanceView extends StatelessWidget {
  const FormAdvanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FormAdvanceViewModel>.reactive(
        viewModelBuilder: () => FormAdvanceViewModel(),
        builder: (context, model, child) => Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Form(
                      key: model.formKey,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const TextComponent(
                              AppStrings.address,
                            ),
                            TextFormFieldComponent(
                              hintText: AppStrings.hintAddress,
                              controller: model.addressController,
                              validator: (value) => validateAddress(value),
                            ),
                            const TextComponent(AppStrings.income),
                            TextFormFieldComponent(
                              hintText: AppStrings.hintIncome,
                              controller: model.incomeController,
                              keyboardType: TextInputType.phone,
                              validator: (value) => validateIncome(value),
                            ),
                            const TextComponent(AppStrings.refName),
                            TextFormFieldComponent(
                              hintText: AppStrings.hintAddress,
                              controller: model.referenceNameController,
                              validator: (value) => validateName(value),
                            ),
                            const TextComponent(AppStrings.refNumber),
                            TextFormFieldComponent(
                              hintText: AppStrings.hintNumber,
                              controller: model.referenceNumberController,
                              keyboardType: TextInputType.phone,
                              validator: (value) => validateNumber(value),
                            ),
                          ]
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ButtonComponent(
                          buttonText: 'Next',
                          onPressed: () {
                            if (model.formKey.currentState!.validate()) {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return DialogComponent(
                                      buttonText: 'Proceed to your Application',
                                      addButtonText1: 'Not Now',
                                      addButtonText2: 'Upgrade',
                                      dialogTitle: AppStrings.news,
                                      dialogSubtitle: AppStrings.successMessage,
                                      showCancelButton: true,
                                      addButton: true,
                                      onPressed: () {}
                                  );
                                },
                              );
                            } else {
                              print('Form is not valid');
                            }
                          }),
                    )
                  ],
                ),
              ),
            )
        ));
  }
}
