import 'package:flutter/material.dart';
import 'package:flutter_stacked_implementation/app/app.router.dart';
import 'package:flutter_stacked_implementation/constant/app_colors.dart';
import 'package:flutter_stacked_implementation/constant/font_styles_constant.dart';
import 'package:flutter_stacked_implementation/services/local/navigation_services.dart';
import 'package:flutter_stacked_implementation/widgets/button_component.dart';
import 'package:pinput/pinput.dart';
import 'package:flutter_stacked_implementation/constant/app_strings.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 47,
      height: 59,
      textStyle: FontStylesConstant.font20(color: AppColors.black),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.black),
        borderRadius: BorderRadius.circular(8),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: AppColors.black),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: AppColors.white,
      ),
    );

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(flex: 10),
            const Text(
              AppStrings.entrOtp,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
            ),
            const Spacer(flex: 1),
            Pinput(
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: focusedPinTheme,
              submittedPinTheme: submittedPinTheme,
              validator: (value) {
                return value == '2222' ? null : 'Pin is incorrect';
              },
              pinputAutovalidateMode: PinputAutovalidateMode.disabled,
              showCursor: true,
              onCompleted: (pin) => print(pin),
            ),
            const Spacer(),
            const Text(
              AppStrings.resendOtp,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: AppColors.royalBlue),
            ),
            const Spacer(),
            const Text(
              AppStrings.otpInstruction,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const Spacer(flex: 7),
            Row(children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 26.0),
                  child: ButtonComponent(
                    buttonText: AppStrings.next,
                    onPressed: () {
                      NavService.navigateTo(Routes.formBasicView);
                    },
                  ),
                ),
              ),
            ]),
            const Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}
