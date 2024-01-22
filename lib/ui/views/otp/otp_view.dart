import 'package:flutter/material.dart';
import 'package:flutter_stacked_implementation/constant/app_colors.dart';
import 'package:flutter_stacked_implementation/constant/font_styles_constant.dart';
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
      textStyle: FontStylesConstant.font20(color: AppColors.royalBlue),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.black),
        borderRadius: BorderRadius.circular(8),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: AppColors.royalBlue),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(flex: 4),
            const Text(
              AppStrings.entrOtp,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 20),
            Pinput(
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: focusedPinTheme,
              submittedPinTheme: submittedPinTheme,
              validator: (value) {
                return value == '2222' ? null : 'Pin is incorrect';
              },
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              showCursor: true,
              onCompleted: (pin) => print(pin),
            ),
            const SizedBox(height: 10.0),
            const Text(
              AppStrings.resendOtp,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: AppColors.royalBlue),
            ),
            const SizedBox(height: 10.0),
            const Text(
              AppStrings.otpInstruction,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const Spacer(flex: 2),
            Row(children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: ButtonComponent(
                    buttonText: AppStrings.next,
                    onPressed: () {},
                  ),
                ),
              ),
            ]),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
