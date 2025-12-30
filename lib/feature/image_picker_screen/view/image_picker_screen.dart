import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({super.key});

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  File? image;
  final ImagePicker picker = ImagePicker();

  Future<void> pickImage(ImageSource source) async {
    final XFile? picked = await picker.pickImage(source: source);

    if (picked != null) {
      setState(() {
        image = File(picked.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Picker Simple")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            image != null
                ? Image.file(image!, height: 200)
                : Text("No Image Selected"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                pickImage(ImageSource.camera);
              },
              child: Text("Camera"),
            ),
            ElevatedButton(
              onPressed: () {
                pickImage(ImageSource.gallery);
              },
              child: Text("Gallery"),
            ),
          ],
        ),
      ),
    );
  }
}
