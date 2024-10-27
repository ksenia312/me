import 'package:flutter/material.dart';
import 'package:me/uikit/components/summary_circle.dart';
import 'package:me/uikit/responsive/responsive_utils.dart';
import 'package:me/uikit/theme/context_extensions.dart';

class AppSection extends StatelessWidget {
  const AppSection({
    super.key,
    required this.items,
    required this.backgroundColor,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
    this.separator = 14,
  });

  final Color backgroundColor;
  final EdgeInsets padding;
  final List<AppSectionFlexItem> items;
  final double separator;

  @override
  Widget build(BuildContext context) {
    final separatedItems = <Widget>[];
    for (var i = 0; i < items.length; i++) {
      final item = items[i];
      separatedItems.add(item);
      if (i != items.length - 1) {
        separatedItems.add(
          const SizedBox.square(dimension: 16),
        );
      }
    }

    return Container(
      color: backgroundColor,
      alignment: Alignment.center,
      padding: padding,
      child: Responsive.get(
        context,
        def: () => Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: separatedItems,
        ),
        s: () => Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: separatedItems,
        ),
      ),
    );
  }
}

abstract class AppSectionFlexItem extends StatelessWidget {
  const AppSectionFlexItem({super.key, this.flex = 1});

  final int flex;
}

class AppSectionTextItem extends AppSectionFlexItem {
  const AppSectionTextItem({
    required this.title,
    required this.titleColor,
    this.subtitle,
    this.subtitleColor,
    this.body,
    this.bodyColor,
    super.flex,
    super.key,
  });

  final String title;
  final String? subtitle;
  final String? body;
  final Color titleColor;
  final Color? subtitleColor;
  final Color? bodyColor;

  @override
  Widget build(BuildContext context) {
    final align = Responsive.get(
      context,
      def: () => TextAlign.start,
      s: () => TextAlign.center,
    );
    return Flexible(
      flex: flex,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: Responsive.get(
            context,
            def: () => CrossAxisAlignment.start,
            s: () => CrossAxisAlignment.center,
          ),
          children: [
            Text(
              title,
              style: context.textTheme.titleLarge?.copyWith(color: titleColor),
              textAlign: align,
            ),
            if (subtitle != null)
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  subtitle!,
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: subtitleColor ?? titleColor,
                  ),
                  textAlign: align,
                ),
              ),
            if (body != null)
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  body!,
                  style: context.textTheme.bodyMedium?.copyWith(color: bodyColor ?? titleColor),
                  textAlign: align,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class AppSectionWidgetItem extends AppSectionFlexItem {
  const AppSectionWidgetItem({super.key, required this.child, super.flex});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: flex,
      child: Center(child: child),
    );
  }
}
