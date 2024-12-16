import 'package:me/uikit/localization/localization.dart';
import 'package:flutter/material.dart';
import 'package:me/domain/pet_project/model/pet_project_data.dart';
import 'package:me/uikit/localization/locales.dart';

extension PetProjectExtension on PetProjectData {
  String? titleOf(BuildContext context) {
    return titles[context.locale.languageCode] ?? titles[fallbackLocale.languageCode];
  }

  String? subtitleOf(BuildContext context) {
    return subtitles[context.locale.languageCode] ?? subtitles[fallbackLocale.languageCode];
  }
}
