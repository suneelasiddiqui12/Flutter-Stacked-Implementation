  import 'package:flutter_stacked_implementation/constant/app_strings.dart';

final emailRegex = RegExp(r'^[a-zA-Z0-9+._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
  final passwordRegex = RegExp(r'^.{8,}$');
  final usernameRegex = RegExp(r'^.{3,}$');
  final numberRegex = RegExp(r'^.{11,15}$');
  final cnicRegex = RegExp(r'^\d{5}-\d{7}-\d{1}$');

  String? validateEmptyField(String? value, String fieldName) {
    if (value == null || value.isEmpty) {
      return '$fieldName ${AppStrings.errorThisFieldCantBeEmpty}';
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

    if (!numberRegex.hasMatch(value!)) {
      return 'Number must be 8-15 characters';
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
