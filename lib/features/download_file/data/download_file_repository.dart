import 'package:firebase_storage/firebase_storage.dart';
import 'package:me/features/download_file/domain/repository/download_file_repository.dart';

class DownloadFileRepositoryImpl extends DownloadFileRepository {
  final _storage = FirebaseStorage.instance;

  @override
  Future<String> getDownloadUrl([String filePath = '']) {
    return _storage.ref(filePath).getDownloadURL();
  }
}
