part of '../landing.dart';

class _AboutMeView extends StatelessWidget {
  const _AboutMeView();

  @override
  Widget build(BuildContext context) {
    return ProjectSection(
      title: LocaleKeys.aboutMeTitle.tr(),
      subtitle: LocaleKeys.aboutMe.tr(),
      subtitle2: LocaleKeys.aboutMe2.tr(),
      textFlex: 2,
      backgroundColor: Colors.transparent,
      titleColor: Theme.of(context).colorScheme.primary,
      subtitleColor: Theme.of(context).colorScheme.onBackground,
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: Responsive.get(context, def: () => 50, s: () => 24),
      ),
      child: HoveringWidget(
        builder: (context, isActive) {
          final size = isActive ? -0.5 : -2.0;
          return AnimatedRotation(
            turns: size,
            duration: const Duration(milliseconds: 300),
            child: Assets.icons.icBrain.svg(fit: BoxFit.cover),
          );
        },
      ),
    );
  }
}
