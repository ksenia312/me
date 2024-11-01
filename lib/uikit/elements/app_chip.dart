import 'package:flutter/material.dart';
import 'package:me/uikit/responsive/responsive_sizes.dart';
import 'package:me/uikit/theme/context_extensions.dart';

class AppChip extends StatelessWidget {
  const AppChip({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Chip(
      padding: EdgeInsets.symmetric(
        horizontal: AppResponsiveSizes.medium(context),
        vertical: AppResponsiveSizes.small(context),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppResponsiveSizes.small(context)),
      ),
      side: BorderSide.none,
      color: WidgetStatePropertyAll(context.colorScheme.secondary),
      label: Text(
        text,
        style: context.textTheme.bodySmall,
      ),
    );
  }
}
