import 'dart:developer';
import 'dart:io';

import 'package:flutter_stacked_implementation/app/app.locator.dart';
import 'package:flutter_stacked_implementation/services/local/media_service.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';

class ImagePickerViewModel extends BaseViewModel {

  final mediaService = locator<MediaService>();

  File? _selectedImage;

  bool get hasSelectedImage => _selectedImage != null;

  File get selectedImage => _selectedImage!;

  Future pickImage(bool fromGallery) async {

    XFile? pickedFile;

    try {
      pickedFile = await mediaService.pickImage(fromGallery);
    } catch (e) {
      log("Error picking image: $e");
    }

    if (pickedFile != null) {
      _selectedImage = File(pickedFile.path);
      notifyListeners();
    }
  }
}
