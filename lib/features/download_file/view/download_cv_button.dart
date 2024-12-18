import 'package:flutter/material.dart';
import 'package:me/features/download_file/notifier/download_cv_notifier.dart';
import 'package:me/uikit/elements/app_elevated_button.dart';
import 'package:me/uikit/elements/app_progress.dart';
import 'package:me/uikit/localization/localization.dart';

class DownloadCVButton extends StatefulWidget {
  const DownloadCVButton({super.key});

  @override
  State<DownloadCVButton> createState() => _DownloadCVButtonState();
}

class _DownloadCVButtonState extends State<DownloadCVButton> {
  late final downloadCVService = DownloadCvNotifier()..addListener(() => setState(() {}));

  @override
  Widget build(BuildContext context) {
    return AppElevatedButton(
      onPressed: downloadCVService.isLoading ? null : downloadCVService.call,
      child: downloadCVService.isLoading
          ? AppProgress.small()
          : Text(
              context.keys.experience.cv.button,
              textAlign: TextAlign.center,
            ),
    );
  }
}
