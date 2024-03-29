import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';

class FireStoreDatabase {
  String? downloadURL;

  Future getData(String fileName) async {
    try {
      await downloadURLExample(fileName);
      return downloadURL;
    } catch (e) {
      debugPrint("Error + $e");
      return null;
    }
  }

  Future<void> downloadURLExample(String fileName) async {
    downloadURL = await FirebaseStorage.instance
    .ref()
    .child(fileName)
    .getDownloadURL();
    debugPrint(downloadURL.toString());
  }
}