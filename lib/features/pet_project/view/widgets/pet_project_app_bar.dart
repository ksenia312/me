import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:me/features/pet_project/notifier/pet_project_notifier.dart';
import 'package:me/uikit/responsive/responsive_sizes.dart';
import 'package:me/uikit/theme/context_extensions.dart';

class PetProjectAppBar extends StatelessWidget {
  const PetProjectAppBar({super.key, required this.notifier});

  final PetProjectNotifier notifier;

  @override
  Widget build(BuildContext context) {
    final color = notifier.vm?.data.accentColor ?? context.customColorScheme.gradientExtraLightColor;

    return FlexibleSpaceBar(
      collapseMode: CollapseMode.pin,
      background: Builder(
        builder: (context) {
          final imageUrl = notifier.vm?.coverImageUrl;
          return Hero(
            tag:'pet-project-${notifier.id}',
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
              color: color,
              padding: EdgeInsets.only(top: AppResponsiveSizes.toolbarHeight(context)),
              child: imageUrl == null
                  ? SizedBox.shrink()
                  : CachedNetworkImage(
                      imageUrl: imageUrl,
                      fit: BoxFit.fitHeight,
                      fadeInCurve: Curves.easeInOut,
                      fadeOutCurve: Curves.easeInOut,
                      filterQuality: FilterQuality.high,
                      fadeInDuration: const Duration(milliseconds: 300),
                      fadeOutDuration: const Duration(milliseconds: 300),
                    ),
            ),
          );
        },
      ),
    );
  }
}
