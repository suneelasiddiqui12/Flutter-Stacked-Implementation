import 'package:flutter_stacked_implementation/constant/app_strings.dart';

class ValidationUtil {

  static const String _emailPattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  static bool _isEmailValid(String email) {
    final regexEmail = RegExp(_emailPattern);
    return regexEmail.hasMatch(email);
  }

  static String? validateEmail(
      String email, {
        String? errorMessage,
        String? fieldName,
      }) {
    if (email.isEmpty) {
      return AppStrings.errorThisFieldCantBeEmpty;
    } else if (_isEmailValid(email)) {
      return null;
    } else {
      return errorMessage ?? AppStrings.errorInvalidEmail;
    }
  }

}
