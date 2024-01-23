  import 'package:flutter_stacked_implementation/constant/app_strings.dart';

final emailRegex = RegExp(r'^[a-zA-Z0-9+._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
  final passwordRegex = RegExp(r'^.{8,}$');
  final usernameRegex = RegExp(r'^.{3,}$');
  final digitRegex = RegExp(r'^\d+$');
  final cnicRegex = RegExp(r'^\d{5}-\d{7}-\d{1}$');

  String? validateEmptyField(String? value, String fieldName) {
    if (value == null || value.isEmpty) {
      return AppStrings.errorThisFieldCantBeEmpty;
    }
    return null;
  }

  String? validateName(String? value) {
    String? emptyFieldError = validateEmptyField(value, 'Name');
    if (emptyFieldError != null) {
      return emptyFieldError;
    }
    if (!usernameRegex.hasMatch(value!)) {
      return 'Min three characters limit is required';
    }
    return null;
  }

  String? validateCnic(String? cnic) {
    String? emptyFieldError = validateEmptyField(cnic, 'CNIC');
    if (emptyFieldError != null) {
      return emptyFieldError;
    }
    if (!cnicRegex.hasMatch(cnic!)) {
      return 'Invalid CNIC format';
    }
    return null;
  }

  String? validateEmail(String? value) {
    String? emptyFieldError = validateEmptyField(value, 'Email');
    if (emptyFieldError != null) {
      return emptyFieldError;
    }
    if (!emailRegex.hasMatch(value!)) {
      return 'Invalid email format';
    }
    return null;
  }

  String? validateNumber(String? value) {
    String? emptyFieldError = validateEmptyField(value, 'Number');
    if (emptyFieldError != null) {
      return emptyFieldError;
    }
    // Check if the value is a valid integer
    if (!digitRegex.hasMatch(value!)) {
      return 'Invalid number format';
    }
    // Check if the integer has exactly 11 digits
    if (value.length != 11) {
      return 'Number must be exactly 11 digits';
    }
    return null;
  }

  String? validatePassword(String? value) {
    String? emptyFieldError = validateEmptyField(value, 'Password');
    if (emptyFieldError != null) {
      return emptyFieldError;
    }
    if (!passwordRegex.hasMatch(value!)) {
      return 'Password must be at least 8 characters long';
    }
    return null;
  }

  String? validateProfilePassword(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    }
    if (!passwordRegex.hasMatch(value)) {
      return 'Password must be at least 8 characters long';
    }
    return null;
  }

  String? validateIncome(String? value) {
    String? emptyFieldError = validateEmptyField(value, 'Income');
    if (emptyFieldError != null) {
      return emptyFieldError;
    }
    try {
      int income = int.parse(value!);

      if (income <= 10000) {
        return 'Income must be greater than PKR 10000';
      }
    } catch (e) {
      return 'Invalid income format';
    }
    return null;
  }

  String? validateAddress(String? value) {
    String? emptyFieldError = validateEmptyField(value, 'Address');
    if (emptyFieldError != null) {
      return emptyFieldError;
    }

    if (value!.length > 100) {
      return 'Address should not be more than 100 characters';
    }

    return null;
  }
