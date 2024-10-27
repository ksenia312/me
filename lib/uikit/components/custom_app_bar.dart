import 'package:flutter/material.dart';
import 'package:me/uikit/responsive/responsive_sizes.dart';
import 'package:me/uikit/theme/app_colors.dart';
import 'package:me/uikit/theme/app_constants.dart';
import 'package:me/uikit/theme/context_extensions.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.rightTabs = const [],
    this.leftTabs = const [],
  });

  final List<Widget> rightTabs;
  final List<Widget> leftTabs;

  @override
  Size get preferredSize => Size.fromHeight(AppResponsiveSizes.toolbarHeight());

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0,
      color: AppColors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ...leftTabs.map(
                  (e) => Flexible(
                    child: SizedBox(height: double.infinity, child: e),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ...rightTabs.map(
                  (e) => Flexible(
                    child: SizedBox(height: double.infinity, child: e),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomToolbarTab extends StatelessWidget {
  const CustomToolbarTab({
    super.key,
    this.title,
    this.titleWidget,
    this.onPressed,
  }) : assert(title != null || titleWidget != null);

  static EdgeInsets paddingOf(BuildContext context) {
    return EdgeInsets.symmetric(
      horizontal: AppResponsiveSizes.large(context),
      vertical: AppResponsiveSizes.small(context),
    );
  }

  final String? title;
  final Widget? titleWidget;
  final void Function(BuildContext)? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: AppSizes.toolbarBorderRadius,
      onTap: onPressed != null ? () => onPressed?.call(context) : null,
      child: Container(
        padding: paddingOf(context),
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            title != null ? Text(title!, style: context.textTheme.bodySmall) : titleWidget!,
          ],
        ),
      ),
    );
  }
}
