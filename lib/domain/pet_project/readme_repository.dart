import 'package:me/data/pet_project/readme_repository_impl.dart';

abstract class ReadmeRepository {
  static ReadmeRepository? _instance;

  static ReadmeRepository get instance {
    return _instance ??= ReadmeRepositoryImpl();
  }

  Future<String> fetch(String url);
}
