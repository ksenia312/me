part of '../landing.dart';

class _DownloadCVView extends StatefulWidget {
  const _DownloadCVView();

  @override
  State<_DownloadCVView> createState() => _DownloadCVViewState();
}

class _DownloadCVViewState extends State<_DownloadCVView> {
  late final downloadCVService = DownloadCvService()
    ..addListener(() => setState(() {}));

  @override
  Widget build(BuildContext context) {
    final foregroundColor = Theme.of(context).colorScheme.onTertiary;
    final backgroundColor = Theme.of(context).colorScheme.tertiary;
    return ProjectSection(
      title: LocaleKeys.cvTitle.tr(),
      backgroundColor: backgroundColor,
      titleColor: foregroundColor,
      reversed: true,
      textFlex: 2,
      padding: EdgeInsets.symmetric(
        horizontal: Responsive.get(context, def: () => 32, s: () => 16),
        vertical: Responsive.get(context, def: () => 70, s: () => 32),
      ),
      child: ElevatedButton(
        onPressed: downloadCVService.isLoading ? null : downloadCVService.call,
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(150, 70),
        ),
        child: downloadCVService.isLoading
            ? CircularProgressIndicator.adaptive(
                backgroundColor: foregroundColor,
              )
            : Text(
                LocaleKeys.openCv.tr(),
                textAlign: TextAlign.center,
              ),
      ),
    );
  }
}
