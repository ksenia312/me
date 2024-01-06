import 'package:firebase_storage/firebase_storage.dart';

class FirebaseRepository {
  static FirebaseRepository? _instance;

  static FirebaseRepository get instance {
    return _instance ??= FirebaseRepository();
  }

  final FirebaseStorage _storage = FirebaseStorage.instance;

  Future<String> getDownloadUrl([String filePath = '']) {
    return _storage.ref(filePath).getDownloadURL();
  }
}
