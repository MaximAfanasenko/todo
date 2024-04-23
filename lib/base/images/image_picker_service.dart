import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

@singleton
class ImagePickerService {
  Future<XFile?> pickImage() {
    return ImagePicker().pickImage(source: ImageSource.gallery);      
  }
}