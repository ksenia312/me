import 'package:flutter/material.dart';
import 'package:me/uikit/responsive/responsive_sizes.dart';
import 'package:me/uikit/theme/context_extensions.dart';

class AppChip extends StatelessWidget {
  const AppChip({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppResponsiveSizes.medium(context),
        vertical: AppResponsiveSizes.small(context),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppResponsiveSizes.medium(context)),
        color: context.colorScheme.secondary,
      ),
      child: Text(
        text,
        style: context.textTheme.bodySmall?.copyWith(height: 1),
      ),
    );
  }
}
