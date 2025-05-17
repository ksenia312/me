import 'package:me/app/loader/local_storage_loader.dart';
import 'package:me/data/localization/localization_repository_impl.dart';

abstract class LocalizationRepository {
  static LocalizationRepository? _instance;

  static Future<LocalizationRepository> instance() async {
    if (_instance != null) {
      return _instance!;
    }
    final prefs = await LocalStorageLoader.load();
    return _instance ??= LocalizationRepositoryImpl(storage: prefs);
  }

  Future<String?> getCurrentLocale();

  Future<void> setCurrentLocale(String locale);
}
