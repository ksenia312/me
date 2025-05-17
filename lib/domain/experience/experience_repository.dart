import 'package:me/data/experience/experience_repository_impl.dart';

abstract class ExperienceRepository {
  static ExperienceRepository? _instance;

  static ExperienceRepository get instance {
    return _instance ??= ExperienceRepositoryImpl();
  }

  double getOverallExperienceInYears();

  double getFlutterExperienceInYears();

  String getPackageLink();

  String getAppLink();
}
