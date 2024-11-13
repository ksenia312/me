import 'package:flutter/material.dart';
import 'package:me/features/pet_project/notifier/pet_project_vm.dart';
import 'package:me/uikit/elements/app_video_player.dart';
import 'package:me/uikit/responsive/responsive_sizes.dart';
import 'package:me/uikit/responsive/responsive_utils.dart';
import 'package:me/uikit/theme/context_extensions.dart';

class PetProjectDemo extends StatelessWidget {
  const PetProjectDemo({super.key, required this.vm});

  final PetProjectLoadedPage vm;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppResponsiveSizes.landingMargin(context)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (vm.androidDemoUrl != null) ...[
            ..._buildDemo(
              context,
              url: vm.androidDemoUrl!,
              aspectRatio: vm.data.androidDemoAspectRatio ?? 16 / 9,
              title: 'Android demo',
            ),
            SizedBox(height: AppResponsiveSizes.large(context)),
          ],
          if (vm.iosDemoUrl != null) ...[
            ..._buildDemo(
              context,
              url: vm.iosDemoUrl!,
              aspectRatio: vm.data.iosDemoAspectRatio ?? 16 / 9,
              title: 'iOS demo',
            ),
            SizedBox(height: AppResponsiveSizes.large(context)),
          ],
        ],
      ),
    );
  }

  List<Widget> _buildDemo(
    BuildContext context, {
    required String url,
    required double aspectRatio,
    required String title,
  }) {
    final player = AppVideoPlayer(url: url, aspectRatio: aspectRatio);
    return [
      Text(title, style: context.textTheme.headlineSmall),
      SizedBox(height: AppResponsiveSizes.x5Large(context)),
      Responsive.get(
        context,
        def: () => SizedBox(
          height: MediaQuery.of(context).size.height / 1.5,
          width: double.infinity,
          child: player,
        ),
        s: () => SizedBox(
          width: double.infinity,
          child: player,
        ),
      ),
    ];
  }
}
