import 'package:flutter/material.dart';
import 'package:me/features/pet_project/notifier/pet_project_notifier.dart';
import 'package:me/uikit/elements/app_markdown.dart';
import 'package:me/uikit/responsive/responsive_sizes.dart';
import 'package:me/uikit/theme/app_colors.dart';
import 'package:me/uikit/theme/context_extensions.dart';

class PetProjectReadme extends StatelessWidget {
  const PetProjectReadme({super.key, required this.notifier, this.scrollController});

  final PetProjectNotifier notifier;
  final ScrollController? scrollController;

  @override
  Widget build(BuildContext context) {
    if (notifier.isMarkdownLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    final markdown = notifier.vm?.markdown;
    if (markdown != null) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: AppResponsiveSizes.landingMarginSmall(context)),
        child: _buildMarkdown(context, markdown: markdown),
      );
    }

    return SizedBox.shrink();
  }

  Widget _buildMarkdown(BuildContext context, {required String markdown}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.blueMore,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              color: AppColors.extraBlueMore,
              padding: EdgeInsets.symmetric(
                horizontal: AppResponsiveSizes.x3Large(context),
                vertical: AppResponsiveSizes.large(context),
              ),
              child: Text('README.md', style: context.textTheme.titleMedium),
            ),
            Padding(
              padding: EdgeInsets.all(AppResponsiveSizes.x3Large(context)),
              child: AppMarkdown(
                markdown: markdown,
                imagesSourceLink: notifier.vm?.data.githubLink,
                scrollController: scrollController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
