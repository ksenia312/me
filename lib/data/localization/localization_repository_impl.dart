import 'package:me/domain/localization/localization_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalizationRepositoryImpl implements LocalizationRepository {
  const LocalizationRepositoryImpl({required SharedPreferences storage}) : _storage = storage;

  final SharedPreferences _storage;

  static const _key = 'XENIKII_LOCALIZATION';

  @override
  Future<String?> getCurrentLocale() async {
    return _storage.getString(_key);
  }

  @override
  Future<void> setCurrentLocale(String locale) async {
    await _storage.setString(_key, locale);
  }
}
