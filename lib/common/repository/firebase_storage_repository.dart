import 'dart:io';
import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final firebaseStorageRepositoryProvider = Provider(
  (ref) {
    return FirebaseStorageRepository(firebaseStorage: FirebaseStorage.instance);
  },
);

class FirebaseStorageRepository {
  final FirebaseStorage firebaseStorage;

  FirebaseStorageRepository({required this.firebaseStorage});

  storeFileToFirebase(String ref, var file) async {
    UploadTask? uploadTask;
    if (file is File) {
      uploadTask = firebaseStorage.ref().child(ref).putFile(file);
    } else if (file is Uint8List) {
      uploadTask = firebaseStorage.ref().child(ref).putData(file);
    }
    TaskSnapshot snapshot = await uploadTask!;
    String imageUrl = await snapshot.ref.getDownloadURL();
    return imageUrl;
  }
}



/* ********** upload files ********** */

// You can find the following instructions in the firebase documentation. Link : https://firebase.google.com/docs/storage/flutter/start?authuser=0

  /*
  1. Create a reference to upload, download, or delete a file with Firebaase.instance.ref()
  2. Create a child reference
      -> uploadTask now points to path ref = 'profileImage/$uid'
  3. call the putFile(), putString(), or putData() method to upload the file to Cloud Storage
  4. After uploading, you can get a URL to download the file by calling the getDownloadUrl() method on the Reference

  5. Optional : Pause, resume, and cancel uploads for large files (see the documentation)
  6. Optional : Monitor upload progress (see the documentation)
  7. Optional : Error handling (see the documentation)

  */