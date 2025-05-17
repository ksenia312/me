import 'package:firebase_storage/firebase_storage.dart';
import 'package:me/domain/download_file/download_file_repository.dart';

class DownloadFileRepositoryImpl extends DownloadFileRepository {
  final _storage = FirebaseStorage.instance;

  @override
  Future<String> getDownloadUrl([String filePath = '']) {
    return _storage.ref(filePath).getDownloadURL();
  }
}
