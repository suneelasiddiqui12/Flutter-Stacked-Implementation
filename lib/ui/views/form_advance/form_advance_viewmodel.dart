import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class FormAdvanceViewModel extends BaseViewModel {
  TextEditingController addressController = TextEditingController();
  TextEditingController incomeController = TextEditingController();
  TextEditingController referenceNameController = TextEditingController();
  TextEditingController referenceNumberController = TextEditingController();

  final formKey = GlobalKey<FormState>();
}