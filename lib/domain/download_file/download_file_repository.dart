import 'package:me/data/download_file/download_file_repository_impl.dart';

abstract class DownloadFileRepository {
  static DownloadFileRepository? _instance;

  static DownloadFileRepository get instance {
    return _instance ??= DownloadFileRepositoryImpl();
  }

  Future<String> getDownloadUrl([String filePath = '']);
}
