import 'package:flutter/material.dart';
import 'package:me/features/pet_project/notifier/pet_project_vm.dart';
import 'package:me/uikit/extensions/pet_project_extension.dart';
import 'package:me/uikit/responsive/responsive_sizes.dart';
import 'package:me/uikit/theme/context_extensions.dart';

class PetProjectTitle extends StatelessWidget {
  const PetProjectTitle({super.key, required this.vm});

  final PetProjectPageVM vm;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppResponsiveSizes.landingMargin(context),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: AppResponsiveSizes.x8large(context)),
          Text(vm.data.titleOf(context)?.toUpperCase() ?? '', style: context.textTheme.displaySmall),
          SizedBox(height: AppResponsiveSizes.x2Large(context)),
          Text(vm.data.subtitleOf(context) ?? '', style: context.textTheme.titleMedium),
        ],
      ),
    );
  }
}
