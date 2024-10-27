import 'package:flutter/material.dart';
import 'package:me/uikit/responsive/responsive_utils.dart';
import 'package:me/uikit/theme/context_extensions.dart';

class SummaryCircle extends StatelessWidget {
  const SummaryCircle({super.key, required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    final size = Responsive.get(
      context,
      def: () => 290.0,
      s: () => 156.0,
    );
    return Container(
      width: size,
      height: size,
      padding: EdgeInsets.symmetric(
       horizontal: Responsive.get(context, def: () => 32, s: () => 16),
       vertical: Responsive.get(context, def: () => 16, s: () => 12),
      ),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        border: Border.all(color: context.customColorScheme.borderColor, width: 2),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.onSurface.withOpacity(0.7),
            blurRadius: 8,
          ),
        ],
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: context.textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            SizedBox(height:Responsive.get(context, def: () => 12, s: () => 8)),
            Text(
              subtitle,
              style: context.textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
