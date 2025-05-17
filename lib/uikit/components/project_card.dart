import 'package:flutter/material.dart';
import 'package:me/domain/pet_project/model/pet_project_data.dart';
import 'package:me/features/pet_project/notifier/pet_project_vm.dart';
import 'package:me/features/pet_project/view/pet_project_page.dart';
import 'package:me/uikit/elements/app_image.dart';
import 'package:me/uikit/extensions/pet_project_extension.dart';
import 'package:me/uikit/responsive/responsive_sizes.dart';
import 'package:me/uikit/responsive/responsive_utils.dart';
import 'package:me/uikit/theme/context_extensions.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.vm});

  static const _hiddenIndent = 10.0;

  final PetProjectCardVM vm;

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        borderRadius: _borderRadiusOf(context),
        boxShadow: _shadowsOf(context),
      ),
      child: InkWell(
        onTap: () => PetProjectDataPage.go(context, loaded: vm.toPage()),
        borderRadius: _borderRadiusOf(context),
        child: ClipRRect(
          borderRadius: _borderRadiusOf(context),
          child: Stack(
            fit: StackFit.expand,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            children: [
              Positioned.fill(
                child: _Image(vm: vm, borderRadius: _borderRadiusOf(context)),
              ),
              Positioned.fill(
                child: ColoredBox(
                  color: context.customColorScheme.gradientLightColor.withValues(alpha: 0.1),
                ),
              ),
              Positioned(
                bottom: -_hiddenIndent,
                left: -_hiddenIndent,
                right: -_hiddenIndent,
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                    AppResponsiveSizes.x3Large(context) + _hiddenIndent,
                    AppResponsiveSizes.x4Large(context),
                    AppResponsiveSizes.x3Large(context) + _hiddenIndent,
                    AppResponsiveSizes.x4Large(context) + _hiddenIndent,
                  ),
                  color: context.customColorScheme.gradientLightColor.withValues(alpha: 0.9),
                  child: _TextContent(data: vm.data),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<BoxShadow> _shadowsOf(BuildContext context) => [
        BoxShadow(
          offset: Offset(0, 8),
          blurRadius: 12,
          spreadRadius: 6,
          color: Colors.black.withValues(alpha: 0.15),
        ),
        BoxShadow(
          offset: Offset(0, 4),
          blurRadius: 4,
          color: Colors.black.withValues(alpha: 0.3),
        ),
      ];

  BorderRadius _borderRadiusOf(BuildContext context) => BorderRadius.circular(AppResponsiveSizes.x4Large(context));
}

class _Image extends StatelessWidget {
  const _Image({required this.vm, required this.borderRadius});

  final BorderRadius borderRadius;
  final PetProjectCardVM vm;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Hero(
          tag: 'pet-project-${vm.data.id}',
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
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(color: vm.data.accentColor, borderRadius: borderRadius),
            child: AppImage(
              imageUrl: vm.imageUrl,
              fit: BoxFit.fitHeight,
              height: constraints.biggest.height,
              width: constraints.biggest.width,
              errorWidget: (context, _, __) => Image.asset(
                vm.imageUrl,
                fit: BoxFit.cover,
                height: constraints.biggest.height * 0.9,
                width: constraints.biggest.width * 0.9,
                errorBuilder: (context, error, stackTrace) {
                  return SizedBox.shrink();
                },
              ),
            ),
          ),
        );
      },
    );
  }
}

class _TextContent extends StatelessWidget {
  const _TextContent({required this.data});

  final PetProjectData data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          data.titleOf(context) ?? '',
          style: context.textTheme.titleLarge,
          textAlign: TextAlign.start,
        ),
        SizedBox(height: AppResponsiveSizes.medium(context)),
        Builder(builder: (context) {
          final style = context.textTheme.bodyMedium ?? TextStyle();
          final height = style.height ?? 1.0;
          final fontSize = style.fontSize ?? 14;
          final maxLines = Responsive.get(
            context,
            def: () => 3,
            s: () => 2,
          );

          return Container(
            alignment: Alignment.centerLeft,
            height: fontSize * height * maxLines,
            child: Text(
              data.subtitleOf(context) ?? '',
              style: style.copyWith(height: height, fontSize: fontSize),
              maxLines: maxLines,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
            ),
          );
        }),
      ],
    );
  }
}
