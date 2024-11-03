import 'package:flutter/material.dart';
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
    return HoveringWidget(
      builder: (context, isActive) {
        final size = Responsive.get(
          context,
          def: () => 280.0,
          m: () => 200.0,
          s: () => MediaQuery.sizeOf(context).width,
        );
        final widget = AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          curve: Curves.easeInOut,
          padding: EdgeInsets.symmetric(
            horizontal: AppResponsiveSizes.x3Large(context),
            vertical: AppResponsiveSizes.large(context),
          ),
          decoration: BoxDecoration(
            color: context.colorScheme.surface,
            border: Border.all(
              color: isActive ? context.colorScheme.primary : context.customColorScheme.borderColor,
              width: isActive ? 4 : 2,
              strokeAlign: BorderSide.strokeAlignOutside,
            ),
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
              BoxShadow(
                color: context.colorScheme.onSurface.withOpacity(0.7),
                blurRadius: AppResponsiveSizes.shadowBlurRadius(context),
                spreadRadius: isActive ? 2.0 : 0.0,
              ),
            ],
          ),
          child: isActive
              ? Center(child: activeContent)
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: context.textTheme.titleLarge,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: Responsive.get(context, def: () => 12, s: () => 8)),
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
          def: () => SizedBox.square(dimension: size, child: widget),
          s: () => SizedBox(width: size, height: size / 3.5, child: widget),
        );
      },
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
        ElevatedButton(
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
