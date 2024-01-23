import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class FormBasicViewModel extends BaseViewModel {
  TextEditingController nameController = TextEditingController();
  TextEditingController cnicController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  FocusNode nameFocusNode = FocusNode();
  FocusNode cnicFocusNode = FocusNode();
  FocusNode phoneNumberFocusNode = FocusNode();

  final formKey = GlobalKey<FormState>();
}