import 'package:flutter/material.dart';
import 'package:me/features/pet_project/notifier/pet_project_vm.dart';
import 'package:me/uikit/elements/app_link_button.dart';
import 'package:me/uikit/extensions/pet_project_extension.dart';
import 'package:me/uikit/responsive/responsive_sizes.dart';
import 'package:me/uikit/theme/context_extensions.dart';

class PetProjectTitle extends StatelessWidget {
  const PetProjectTitle({super.key, required this.vm});

  final PetProjectPageVM vm;

  @override
  Widget build(BuildContext context) {
    final spacer = SizedBox(width: 12.0);
    return Padding(
      padding: EdgeInsets.fromLTRB(
        AppResponsiveSizes.landingMargin(context),
        AppResponsiveSizes.x8large(context),
        AppResponsiveSizes.landingMargin(context),
        0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(vm.data.titleOf(context)?.toUpperCase() ?? '', style: context.textTheme.displaySmall),
                SizedBox(height: AppResponsiveSizes.x2Large(context)),
                Text(vm.data.subtitleOf(context) ?? '', style: context.textTheme.titleMedium),
              ],
            ),
          ),
          spacer,
          if (vm.data.googlePlayLink != null) ...[
            AppLinkButton.googlePlay(
              url: vm.data.googlePlayLink!,
              size: AppLinkSize.large,
            ),
            spacer,
          ],
          if (vm.data.websiteLink != null) ...[
            AppLinkButton.external(
              url: vm.data.websiteLink!,
              size: AppLinkSize.large,
            ),
            spacer,
          ],
          if (vm.data.githubLink != null) ...[
            AppLinkButton.github(
              url: vm.data.githubLink!,
              size: AppLinkSize.large,
            ),
            spacer,
          ],
        ],
      ),
    );
  }
}
