part of '../landing.dart';

class _AboutMeView extends StatelessWidget {
  const _AboutMeView();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return AppSection(
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: Responsive.get(context, def: () => 50, s: () => 24),
      ),
      items: [
        AppSectionWidgetItem(
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
        ),
        AppSectionTextItem(
          flex: 2,
          title: LocaleKeys.aboutMeTitle.tr(),
          subtitle: LocaleKeys.aboutMe.tr(),
          body: LocaleKeys.aboutMe2.tr(),
          titleColor: colorScheme.primary,
          subtitleColor: colorScheme.onBackground,
          bodyColor: colorScheme.onBackground,
        ),
      ],
    );
  }
}
