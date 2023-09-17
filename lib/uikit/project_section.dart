import 'package:flutter/material.dart';
import 'package:me/common/utils/responsive_utils.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({
    super.key,
    required this.child,
    required this.title,
    required this.subtitle,
    this.subtitle2,
    required this.backgroundColor,
    required this.foregroundColor,
    this.foregroundColor2,
    this.reversed = false,
    this.imageFlex = 1,
    this.textFlex = 1,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
  });

  final Widget child;
  final String title;
  final String subtitle;
  final String? subtitle2;
  final Color backgroundColor;
  final Color foregroundColor;
  final Color? foregroundColor2;
  final bool reversed;
  final int imageFlex;
  final int textFlex;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    final align = Responsive.get(
      context,
      def: () => TextAlign.start,
      s: () => TextAlign.center,
    );
    final children = [
      Flexible(flex: imageFlex, child: Center(child: child)),
      const SizedBox.square(dimension: 16),
      Flexible(
        flex: textFlex,
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
                style: Responsive.titleStyleOf(context).copyWith(
                  color: foregroundColor,
                ),
                textAlign: align,
              ),
              const SizedBox(height: 8.0),
              Text(
                subtitle,
                style: Responsive.bodyStyleOf(context, bold: true)
                    .copyWith(color: foregroundColor2 ?? foregroundColor),
                textAlign: align,
              ),
              if (subtitle2 != null)
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    subtitle2!,
                    style: Responsive.bodyStyleOf(context)
                        .copyWith(color: foregroundColor2 ?? foregroundColor),
                    textAlign: align,
                  ),
                ),
            ],
          ),
        ),
      ),
    ];
    return Container(
      color: backgroundColor,
      alignment: Alignment.center,
      padding: padding,
      child: Responsive.get(
        context,
        def: () => Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: reversed ? [...children.reversed] : children,
        ),
        s: () => Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [...children.reversed],
        ),
      ),
    );
  }
}
