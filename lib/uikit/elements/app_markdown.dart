import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:me/generated/fonts.gen.dart';
import 'package:me/uikit/elements/app_image.dart';
import 'package:me/uikit/elements/app_elevated_button.dart';
import 'package:me/uikit/extensions/scroll_extension.dart';
import 'package:me/uikit/localization/localization.dart';
import 'package:me/uikit/responsive/responsive_sizes.dart';
import 'package:me/uikit/theme/app_colors.dart';
import 'package:me/uikit/theme/context_extensions.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AppMarkdown extends StatefulWidget {
  const AppMarkdown({
    super.key,
    required this.markdown,
    required this.imagesSourceLink,
    this.scrollController,
  });

  final String markdown;
  final String? imagesSourceLink;
  final ScrollController? scrollController;

  @override
  State<AppMarkdown> createState() => _AppMarkdownState();
}

class _AppMarkdownState extends State<AppMarkdown> {
  final GlobalKey _markdownKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MarkdownBody(
      key: _markdownKey,
      shrinkWrap: true,
      data: widget.markdown.trim(),
      styleSheet: MarkdownStyleSheet(
        p: context.textTheme.bodyMedium?.copyWith(height: 1.5, shadows: []),
        a: context.textTheme.bodyMedium?.copyWith(color: AppColors.electricBlue, shadows: []),
        h1: context.textTheme.headlineSmall?.copyWith(shadows: []),
        h2: context.textTheme.titleMedium?.copyWith(fontSize: (context.textTheme.titleMedium?.fontSize ?? 12) * 1.3),
        h3: context.textTheme.titleMedium?.copyWith(),
        h4: context.textTheme.bodyLarge,
        h5: context.textTheme.bodyMedium,
        h6: context.textTheme.bodyMedium,
        h1Padding: EdgeInsets.only(
          top: AppResponsiveSizes.x3Large(context),
        ),
        h2Padding: EdgeInsets.only(
          top: AppResponsiveSizes.small(context),
          bottom: AppResponsiveSizes.large(context),
        ),
        h3Padding: EdgeInsets.only(
          top: AppResponsiveSizes.small(context),
          bottom: AppResponsiveSizes.large(context),
        ),
        h4Padding: EdgeInsets.only(
          top: AppResponsiveSizes.small(context),
          bottom: AppResponsiveSizes.large(context),
        ),
        h5Padding: EdgeInsets.only(
          top: AppResponsiveSizes.small(context),
          bottom: AppResponsiveSizes.large(context),
        ),
        h6Padding: EdgeInsets.only(
          top: AppResponsiveSizes.small(context),
          bottom: AppResponsiveSizes.large(context),
        ),
        code: context.textTheme.bodySmall?.copyWith(fontFamily: FontFamily.robotoMono, shadows: []),
        codeblockDecoration: BoxDecoration(
          color: AppColors.oceanBlue,
        ),
        codeblockPadding: EdgeInsets.symmetric(
          horizontal: AppResponsiveSizes.x3Large(context),
          vertical: AppResponsiveSizes.medium(context),
        ),
        blockquoteDecoration: BoxDecoration(
          color: context.customColorScheme.borderColor.withValues(alpha: 0.2),
          borderRadius: BorderRadius.circular(3),
          border: Border(
            left: BorderSide(color: context.customColorScheme.borderColor, width: 3),
          ),
        ),
        blockquotePadding: EdgeInsets.symmetric(
          horizontal: AppResponsiveSizes.x3Large(context),
          vertical: AppResponsiveSizes.medium(context),
        ),
        blockSpacing: AppResponsiveSizes.medium(context),
      ),
      sizedImageBuilder: (config) {
        final uri = config.uri;
        final link = widget.imagesSourceLink;
        if (link != null && uri.toString().contains(Uri.parse(link).host)) {
          return AppDarkElevatedButton(
            onPressed: () => launchUrlString(link),
            child: Text(context.keys.petProjects.markdown.imageButton),
          );
        }

        return AppImage(
          imageUrl: uri.toString(),
          errorWidget: (context, _, __) => SizedBox.shrink(),
        );
      },
      onTapLink: (_, href, __) {
        if (href == null) return;

        if (href.startsWith('#')) {
          final key = href.toString().replaceFirst('#', '').toLowerCase().replaceAll(' ', '-');
          RenderBox? renderBox;
          try {
            renderBox = _findRenderBox(label: key);
          } catch (_) {}

          if (renderBox != null && widget.scrollController != null) {
            try {
              _ensureVisibleWithRenderBox(renderBox, widget.scrollController!);
            } catch (_) {}
          }
        }

        if (href.startsWith('http')) {
          launchUrlString(href);
          return;
        }
      },
      styleSheetTheme: MarkdownStyleSheetBaseTheme.material,
      builders: {
        'h1': MarkdownHeaderBuilder(),
        'h2': MarkdownHeaderBuilder(),
        'h3': MarkdownHeaderBuilder(),
        'h4': MarkdownHeaderBuilder(),
        'h5': MarkdownHeaderBuilder(),
        'h6': MarkdownHeaderBuilder(),
      },
      fitContent: false,
      selectable: true,
    );
  }

  RenderBox? _findRenderBox({required String label, RenderBox? box, int level = 0}) {
    final renderBox = box ?? _markdownKey.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox != null) {
      RenderBox? res;
      renderBox.visitChildren((child) {
        if (child is RenderBox) {
          if (child is RenderParagraph) {
            final id = child.text.toPlainText().replaceAll(' ', '-').toLowerCase();
            if (id == label) {
              res = child;
            }
          }
          if (level >= 100) return;

          res ??= _findRenderBox(
            label: label,
            box: child,
            level: level + 1,
          );
        }
      });
      return res;
    }
    return null;
  }

  void _ensureVisibleWithRenderBox(RenderBox renderBox, ScrollController scrollController) {
    final boxOffset = renderBox.localToGlobal(Offset.zero);
    final toolbarHeight = AppResponsiveSizes.toolbarHeight(context) + AppResponsiveSizes.medium(context);
    final position = scrollController.position;
    final targetOffset = (position.pixels + boxOffset.dy - toolbarHeight).clamp(
      position.minScrollExtent,
      position.maxScrollExtent,
    );
    scrollController.animateWithFlatSpeed(context, offset: targetOffset);
  }
}

class MarkdownHeaderBuilder extends MarkdownElementBuilder {
  MarkdownHeaderBuilder();

  bool isCodeBlock(md.Element element) {
    return true;
  }

  @override
  Widget? visitText(md.Text text, TextStyle? preferredStyle) {
    return Text(
      text.textContent,
      style: preferredStyle,
    );
  }
}
