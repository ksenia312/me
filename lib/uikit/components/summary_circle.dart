import 'package:flutter/material.dart';
import 'package:me/uikit/elements/app_elevated_button.dart';
import 'package:me/uikit/elements/app_transform_y_animation.dart';
import 'package:me/uikit/elements/hovering_widget.dart';
import 'package:me/uikit/responsive/responsive_sizes.dart';
import 'package:me/uikit/responsive/responsive_utils.dart';
import 'package:me/uikit/theme/context_extensions.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SummaryCircle extends StatelessWidget {
  const SummaryCircle({
    super.key,
    required this.title,
    required this.subtitle,
    required this.activeContent,
  });

  final String title;
  final String subtitle;
  final ActiveSummaryContent activeContent;

  @override
  Widget build(BuildContext context) {
    final size = Responsive.get(
      context,
      def: () => 250.0,
      xxl: () => 350.0,
      xl: () => 400.0,
      l: () => 280.0,
      m: () => 200.0,
      s: () => MediaQuery.sizeOf(context).width,
    );

    return HoveringWidget(
      builder: (context, isHover) {
        final backWidget = _Decoration(
          isHighlight: isHover,
          backgroundColor: context.customColorScheme.summaryBackgroundColor,
          child: Center(child: activeContent),
        );
        final faceWidget = _Decoration(
          isHighlight: isHover,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: context.textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: AppResponsiveSizes.medium(context)),
              Text(
                subtitle,
                style: context.textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
        return Responsive.get(
          context,
          def: () => SizedBox.square(
            dimension: size,
            child: AppTransformYAnimation(
              faceChild: faceWidget,
              backChild: backWidget,
            ),
          ),
          s: () => SizedBox(
            width: size,
            height: size / 3.5,
            child: isHover ? backWidget : faceWidget,
          ),
        );
      },
    );
  }
}

class _Decoration extends StatelessWidget {
  const _Decoration({
    required this.isHighlight,
    required this.child,
    this.backgroundColor,
  });

  final bool isHighlight;
  final Widget child;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final hasBorders = Responsive.get(context, def: () => true, s: () => false);
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppResponsiveSizes.x3Large(context),
        vertical: AppResponsiveSizes.large(context),
      ),
      decoration: BoxDecoration(
        color: backgroundColor ?? context.colorScheme.surface,
        border: hasBorders
            ? Border.all(
                color: isHighlight ? context.colorScheme.primary : context.customColorScheme.borderColor,
                width: isHighlight ? 4 : 2,
                strokeAlign: BorderSide.strokeAlignOutside,
              )
            : null,
        borderRadius: Responsive.get(
          context,
          def: () => null,
          s: () => BorderRadius.circular(AppResponsiveSizes.x3Large(context)),
        ),
        shape: Responsive.get(
          context,
          def: () => BoxShape.circle,
          s: () => BoxShape.rectangle,
        ),
        boxShadow: [
          if (hasBorders)
            BoxShadow(
              color: context.colorScheme.onSurface.withValues(alpha: 0.7),
              blurRadius: AppResponsiveSizes.shadowBlurRadius(context),
              spreadRadius: isHighlight ? 2.0 : 0.0,
            )
          else
            BoxShadow(
              color: context.customColorScheme.gradientDarkColor,
              blurRadius: AppResponsiveSizes.shadowBlurRadius(context),
              offset: Offset(0, 6),
            ),
        ],
      ),
      child: child,
    );
  }
}

sealed class ActiveSummaryContent extends StatelessWidget {
  const ActiveSummaryContent({super.key});
}

class ActiveSummaryText extends ActiveSummaryContent {
  const ActiveSummaryText({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.textTheme.bodyMedium,
      textAlign: TextAlign.center,
    );
  }
}

class ActiveSummaryLink extends ActiveSummaryContent {
  const ActiveSummaryLink({super.key, required this.title, required this.buttonText, required this.link});

  final String title;
  final String buttonText;
  final String link;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: context.textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: AppResponsiveSizes.large(context)),
        AppElevatedButton(
          onPressed: () => launchUrlString(link),
          child: Text(
            buttonText,
            style: context.textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

class ActiveSummaryRawText extends ActiveSummaryContent {
  const ActiveSummaryRawText({super.key, required this.spans});

  final List<ActiveSummaryTextSpan> spans;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          ...spans.map(
            (e) => TextSpan(
              text: '${e.text}${e.hasSpaceInTheEnd ? " " : ""}',
              style: context.textTheme.bodyMedium?.copyWith(
                fontWeight: e.isBold ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ActiveSummaryTextSpan {
  const ActiveSummaryTextSpan({required this.text, this.isBold = false, this.hasSpaceInTheEnd = true});

  final String text;
  final bool isBold;
  final bool hasSpaceInTheEnd;
}
