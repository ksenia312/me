import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:me/features/download_file/notifier/download_cv_notifier.dart';
import 'package:me/uikit/localization/codegen_loader.g.dart';

class DownloadCVButton extends StatefulWidget {
  const DownloadCVButton({super.key});

  @override
  State<DownloadCVButton> createState() => _DownloadCVButtonState();
}

class _DownloadCVButtonState extends State<DownloadCVButton> {
  late final downloadCVService = DownloadCvNotifier()..addListener(() => setState(() {}));

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: downloadCVService.isLoading ? null : downloadCVService.call,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(150, 70),
      ),
      child: downloadCVService.isLoading
          ? CircularProgressIndicator.adaptive(
              backgroundColor: Theme.of(context).colorScheme.onTertiary,
            )
          : Text(
              LocaleKeys.openCv.tr(),
              textAlign: TextAlign.center,
            ),
    );
  }
}
