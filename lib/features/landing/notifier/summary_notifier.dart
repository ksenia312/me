import 'package:flutter/material.dart';
import 'package:me/domain/experience/experience_repository.dart';

class SummaryNotifier extends ChangeNotifier {
  final _repository = ExperienceRepository.instance;

  late final double overallExperienceInYears = _repository.getOverallExperienceInYears();

  late final double flutterExperienceInYears = _repository.getFlutterExperienceInYears();

  late final String packageLink = _repository.getPackageLink();

  late final String appLink = _repository.getAppLink();
}
