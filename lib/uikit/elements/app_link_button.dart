import 'package:flutter/material.dart';
import 'package:me/generated/assets.gen.dart';
import 'package:me/uikit/responsive/responsive_utils.dart';
import 'package:me/uikit/theme/context_extensions.dart';
import 'package:url_launcher/url_launcher_string.dart';

enum AppLinkSize { small, large }

class AppLinkButton extends StatelessWidget {
  const AppLinkButton({
    super.key,
    required this.url,
    required this.icon,
    required this.size,
  });

  factory AppLinkButton.googlePlay({
    required String url,
    required AppLinkSize size,
  }) =>
      AppLinkButton(
        url: url,
        size: size,
        icon: Assets.icons.icGooglePlay.svg(),
      );

  factory AppLinkButton.external({
    required String url,
    required AppLinkSize size,
  }) =>
      AppLinkButton(
        url: url,
        size: size,
        icon: Assets.icons.icExternalLink.svg(),
      );

  factory AppLinkButton.linkedin({
    required String url,
    required AppLinkSize size,
  }) =>
      AppLinkButton(
        url: url,
        size: size,
        icon: Assets.icons.icLinkedIn.svg(),
      );

  factory AppLinkButton.github({
    required String url,
    required AppLinkSize size,
  }) =>
      AppLinkButton(
        url: url,
        size: size,
        icon: Assets.icons.icGithub.svg(),
      );

  factory AppLinkButton.telegram({
    required String url,
    required AppLinkSize size,
  }) =>
      AppLinkButton(
        url: url,
        size: size,
        icon: Assets.icons.icTelegram.svg(),
      );

  final String url;
  final Widget icon;
  final AppLinkSize size;

  @override
  Widget build(BuildContext context) {
    const smallIconSizeFixed = 24.0;
    const smallSizeFixed = 44.0;

    final smallIconSize = Responsive.get(
      context,
      def: () => 28.0,
      s: () => smallIconSizeFixed,
    );
    final smallSize = Responsive.get(
      context,
      def: () => 44.0,
      s: () => smallSizeFixed,
    );
    final largeIconSize = Responsive.get(
      context,
      def: () => 24.0,
      s: () => smallIconSizeFixed,
    );
    final largeSize = Responsive.get(
      context,
      def: () => 48.0,
      s: () => smallSizeFixed,
    );

    return Container(
      decoration: BoxDecoration(color: context.colorScheme.onSurface, shape: BoxShape.circle),
      height: size == AppLinkSize.small ? smallSize : largeSize,
      width: size == AppLinkSize.small ? smallSize : largeSize,
      child: IconButton(
        icon: SizedBox.square(
          dimension: size == AppLinkSize.small ? smallIconSize : largeIconSize,
          child: icon,
        ),
        padding: EdgeInsets.zero,
        color: context.colorScheme.onSurface,
        onPressed: () async {
          try {
            await launchUrlString(url);
          } catch (_) {}
        },
      ),
    );
  }
}
