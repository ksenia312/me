import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:me/features/pet_project/notifier/pet_project_vm.dart';
import 'package:me/uikit/elements/app_link_button.dart';
import 'package:me/uikit/extensions/pet_project_extension.dart';
import 'package:me/uikit/responsive/responsive_sizes.dart';
import 'package:me/uikit/responsive/responsive_utils.dart';
import 'package:me/uikit/theme/context_extensions.dart';

class PetProjectTitle extends StatelessWidget {
  const PetProjectTitle({super.key, required this.vm});

  final PetProjectPageVM vm;

  @override
  Widget build(BuildContext context) {
    final spacer = SizedBox.square(dimension: Responsive.get(context, def: () => 16.0, s: () => 12.0));
    final title = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(vm.data.titleOf(context)?.toUpperCase() ?? '', style: context.textTheme.displaySmall),
        SizedBox(height: AppResponsiveSizes.x2Large(context)),
        Text(vm.data.subtitleOf(context) ?? '', style: context.textTheme.titleMedium),
      ],
    );

    final icons = Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (vm.data.googlePlayLink != null)
          AppLinkButton.googlePlay(
            url: vm.data.googlePlayLink!,
            size: AppLinkSize.large,
          ),
        if (vm.data.websiteLink != null)
          AppLinkButton.external(
            url: vm.data.websiteLink!,
            size: AppLinkSize.large,
          ),
        if (vm.data.githubLink != null)
          AppLinkButton.github(
            url: vm.data.githubLink!,
            size: AppLinkSize.large,
          ),
      ].expandIndexed((index, e) => [if (index != 0) spacer, e]).toList(),
    );

    return Padding(
      padding: EdgeInsets.fromLTRB(
        AppResponsiveSizes.landingMargin(context),
        AppResponsiveSizes.x8large(context),
        AppResponsiveSizes.landingMargin(context),
        0,
      ),
      child: Responsive.get(
        context,
        def: () => Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Expanded(child: title), spacer, icons],
        ),
        s: () => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [title, SizedBox(height: AppResponsiveSizes.x8large(context)), icons],
        ),
      ),
    );
  }
}
