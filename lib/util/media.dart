import 'dart:io';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:image_picker/image_picker.dart';

Future<void> selectimg(File? img) async {
  final ImagePicker _picker = ImagePicker();
  final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    img = File(image!.path);
    EasyLoading.showToast(img.toString());
}