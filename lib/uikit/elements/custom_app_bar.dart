import 'package:flutter/material.dart';
import 'package:me/uikit/responsive/responsive_sizes.dart';
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
    return AppBar(
      elevation: 0,
      toolbarOpacity: 0.2,
      scrolledUnderElevation: 0,
      titleSpacing: 0,
      toolbarHeight: preferredSize.height,
      centerTitle: true,
      automaticallyImplyLeading: false,
      surfaceTintColor: Colors.transparent,
      flexibleSpace: SizedBox.expand(
        child: Padding(
          padding: EdgeInsets.all(0),
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
              Align(
                alignment: Alignment.centerRight,
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
        ),
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
    this.color,
  }) : assert(title != null || titleWidget != null);

  static EdgeInsets paddingOf(BuildContext context) {
    return EdgeInsets.symmetric(
      horizontal: AppResponsiveSizes.x4Large(context),
      vertical: AppResponsiveSizes.small(context),
    );
  }

  final String? title;
  final Widget? titleWidget;
  final Color? color;
  final void Function(BuildContext)? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: AppSizes.toolbarBorderRadius,
      onTap: onPressed != null ? () => onPressed?.call(context) : null,
      child: Container(
        padding: paddingOf(context),
        height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: AppSizes.toolbarBorderRadius,
          color: color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            title != null
                ? Flexible(child: Text(title!, style: context.textTheme.bodySmall, textAlign: TextAlign.center))
                : titleWidget!,
          ],
        ),
      ),
    );
  }
}
