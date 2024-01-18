import 'dart:developer';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked_annotations.dart';

@LazySingleton()
class MediaService {


  Future<XFile?> pickImage(bool fromGallery) async {
    final ImagePicker imagePicker = ImagePicker();
    try {
      return await imagePicker.pickImage(
        source: fromGallery ? ImageSource.gallery : ImageSource.camera,
      );
    } catch (e) {
      log("Error picking image: $e");
    }
    return null;
  }
}
