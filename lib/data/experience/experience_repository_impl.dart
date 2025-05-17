import 'package:me/domain/experience/experience_repository.dart';

class ExperienceRepositoryImpl implements ExperienceRepository {
  static final _overallStartingDateTime = DateTime.parse('2018-09-01 00:00:00Z');
  static final _flutterStartingDateTime = DateTime.parse('2022-03-01 00:00:00Z');

  static final _packageLink = 'https://pub.dev/packages/nearby_service';
  static final _appLink = 'https://play.google.com/store/apps/details?id=com.xenikii.conneqt';

  @override
  double getOverallExperienceInYears() {
    final stringValue = (DateTime.now().difference(_overallStartingDateTime).inDays / 365).toStringAsFixed(1);
    return double.parse(stringValue);
  }

  @override
  double getFlutterExperienceInYears() {
    final stringValue = (DateTime.now().difference(_flutterStartingDateTime).inDays / 365).toStringAsFixed(1);
    return double.parse(stringValue);
  }

  @override
  String getPackageLink() => _packageLink;

  @override
  String getAppLink() => _appLink;
}
