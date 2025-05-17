import 'package:flutter/material.dart';
import 'package:me/features/pet_project/notifier/pet_project_notifier.dart';
import 'package:me/generated/assets.gen.dart';
import 'package:me/uikit/elements/app_image.dart';
import 'package:me/uikit/responsive/responsive_sizes.dart';
import 'package:me/uikit/theme/context_extensions.dart';

class PetProjectAppBar extends StatelessWidget {
  const PetProjectAppBar({super.key, required this.notifier});

  final PetProjectNotifier notifier;

  @override
  Widget build(BuildContext context) {
    final color = notifier.vm?.data.accentColor ?? context.customColorScheme.gradientExtraLightColor;
    final isError = !notifier.isLoading && notifier.vm?.coverImageUrl == null;

    return FlexibleSpaceBar(
      collapseMode: CollapseMode.pin,
      background: Builder(
        builder: (context) {
          final imageUrl = notifier.vm?.coverImageUrl;
          return Hero(
            tag: 'pet-project-${notifier.id}',
            placeholderBuilder: (context, heroSize, child) => Container(),
            flightShuttleBuilder: (flightContext, animation, direction, fromContext, toContext) {
              if (direction == HeroFlightDirection.pop) {
                // Skip the animation during reverse
                return SizedBox.shrink();
              }
              // Use the default animation during forward
              return Material(
                color: Colors.transparent,
                child: toContext.widget,
              );
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              color: isError ? context.colorScheme.error.withValues(alpha: 0.2) : color,
              padding: EdgeInsets.only(top: AppResponsiveSizes.toolbarHeight(context)),
              child: isError
                  ? Center(
                      child: Assets.icons.icError.svg(
                        height: 52,
                        width: 52,
                        colorFilter: ColorFilter.mode(context.colorScheme.error, BlendMode.srcIn),
                      ),
                    )
                  : imageUrl == null
                      ? SizedBox.shrink()
                      : AppImage(
                          imageUrl: imageUrl,
                          fit: BoxFit.fitHeight,
                          filterQuality: FilterQuality.high,
                        ),
            ),
          );
        },
      ),
    );
  }
}
