import 'package:flutter/material.dart';
import 'package:me/uikit/responsive/responsive_sizes.dart';
import 'package:me/uikit/responsive/responsive_utils.dart';
import 'package:me/uikit/theme/context_extensions.dart';

enum AppTitleAlignment { left, right }

class AppTitle extends StatelessWidget {
  const AppTitle({
    super.key,
    required this.title,
    required this.subtitle,
    this.alignment = AppTitleAlignment.right,
  });

  final String title;
  final String subtitle;
  final AppTitleAlignment alignment;

  @override
  Widget build(BuildContext context) {
    final crossAxisAlignment = Responsive.get(
      context,
      def: () => alignment == AppTitleAlignment.left ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      m: () => CrossAxisAlignment.center,
    );
    final textAlignment = Responsive.get(
      context,
      def: () => alignment == AppTitleAlignment.left ? TextAlign.start : TextAlign.end,
      m: () => TextAlign.center,
    );
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Text(title.toUpperCase(), style: context.textTheme.displaySmall, textAlign: textAlignment),
        SizedBox(height: AppResponsiveSizes.small(context)),
        Text(subtitle, style: context.textTheme.titleMedium, textAlign: textAlignment),
      ],
    );
  }
}
