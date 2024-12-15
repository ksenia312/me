import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:me/generated/assets.gen.dart';
import 'package:me/uikit/elements/app_back_button.dart';
import 'package:me/uikit/elements/app_mobile_menu.dart';
import 'package:me/uikit/responsive/responsive_sizes.dart';
import 'package:me/uikit/responsive/responsive_utils.dart';
import 'package:me/uikit/router/app_router_observer.dart';
import 'package:me/uikit/theme/app_constants.dart';
import 'package:me/uikit/theme/context_extensions.dart';
import 'package:rive/rive.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.rightTabs = const [],
    this.leftTabs = const [],
    this.backgroundColor,
  });

  final List<Widget> rightTabs;
  final List<Widget> leftTabs;
  final Color? backgroundColor;

  @override
  Size get preferredSize => Size.fromHeight(AppResponsiveSizes.toolbarHeight());

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'custom-app-bar',
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
      child: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        titleSpacing: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        toolbarHeight: preferredSize.height,
        surfaceTintColor: Colors.transparent,
        backgroundColor: backgroundColor,
        flexibleSpace: AppFlexibleSpace(
          rightTabs: rightTabs,
          leftTabs: leftTabs,
        ),
        actions: [
          AppActions(
            rightTabs: rightTabs,
            leftTabs: leftTabs,
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
    this.color,
    this.popOnMobile = false,
    this.coloredOnMobile = false,
  }) : assert(title != null || titleWidget != null);

  factory CustomToolbarTab.listItem({
    String? title,
    Widget? titleWidget,
    void Function(BuildContext)? onPressed,
    Color? color,
    bool popOnMobile = true,
  }) {
    return CustomToolbarTab(
      title: title,
      titleWidget: titleWidget,
      onPressed: onPressed,
      color: color,
      coloredOnMobile: true,
      popOnMobile: popOnMobile,
    );
  }

  static EdgeInsets paddingOf(BuildContext context) {
    return EdgeInsets.symmetric(
      horizontal: AppResponsiveSizes.x4Large(context),
      vertical: AppResponsiveSizes.small(context),
    );
  }

  final String? title;
  final Widget? titleWidget;
  final Color? color;
  final bool popOnMobile;
  final bool coloredOnMobile;
  final void Function(BuildContext)? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: AppSizes.toolbarBorderRadius,
      onTap: onPressed != null
          ? () {
              Responsive.get(
                context,
                def: () {},
                s: () {
                  if (popOnMobile) Navigator.of(context).pop();
                },
              );
              onPressed?.call(context);
            }
          : null,
      child: Container(
        padding: paddingOf(context),
        height: AppResponsiveSizes.tabHeight(context),
        decoration: BoxDecoration(
          borderRadius: AppSizes.toolbarBorderRadius,
          color: color ??
              Responsive.get(
                context,
                def: () => Colors.transparent,
                s: () => coloredOnMobile ? Color(0xFF23283C) : Colors.transparent,
              ),
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

class AppFlexibleSpace extends StatelessWidget {
  const AppFlexibleSpace({super.key, required this.rightTabs, required this.leftTabs});

  final List<Widget> rightTabs;
  final List<Widget> leftTabs;

  @override
  Widget build(BuildContext context) {
    Widget? backButton;
    try {
      backButton = [...leftTabs, ...rightTabs].firstWhere((e) => e is AppBackButton);
    } catch (_) {}
    return Responsive.get(
      context,
      def: () => SizedBox.expand(
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
      s: () => Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(height: double.infinity, child: backButton ?? SizedBox.shrink()),
      ),
    );
  }
}

class AppActions extends StatefulWidget {
  const AppActions({super.key, required this.rightTabs, required this.leftTabs});

  final List<Widget> rightTabs;
  final List<Widget> leftTabs;

  @override
  State<AppActions> createState() => _AppActionsState();
}

class _AppActionsState extends State<AppActions> with AppRouterObserver {
  bool isOpen = false;

  List<Widget> get allTabs => [...widget.leftTabs, ...widget.rightTabs].where((e) => e is! AppBackButton).toList();

  @override
  void didChangeLocation(String location, String? previousLocation) {
    if (previousLocation == '/menu' && previousLocation != location) {
      Future.delayed(const Duration(milliseconds: 0), () {
        if (mounted) {
          setState(() {
            isOpen = false;
          });
        }
      });
    }
    if (location == '/menu' && previousLocation != location) {
      Future.delayed(const Duration(milliseconds: 0), () {
        if (mounted) {
          setState(() {
            isOpen = true;
          });
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Responsive.get(
      context,
      def: () => SizedBox.shrink(),
      s: () => AnimatedMenuButton(
        isOpen: isOpen,
        toggle: () {
          if (isOpen) {
            context.pop();
          } else {
            AppMobileMenu.go(context, items: allTabs);
          }
          setState(() {
            isOpen = !isOpen;
          });
        },
      ),
    );
  }
}

class AnimatedMenuButton extends StatefulWidget {
  const AnimatedMenuButton({super.key, required this.toggle, required this.isOpen});

  final VoidCallback toggle;
  final bool isOpen;

  @override
  AnimatedMenuButtonState createState() => AnimatedMenuButtonState();
}

class AnimatedMenuButtonState extends State<AnimatedMenuButton> {
  SimpleAnimation? _controller;

  @override
  void didUpdateWidget(covariant AnimatedMenuButton oldWidget) {
    if (oldWidget.isOpen != widget.isOpen) {
      _animate();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: CustomToolbarTab(
        popOnMobile: false,
        onPressed: (context) => widget.toggle(),
        titleWidget: SizedBox(
          width: 24,
          height: 24,
          child: _controller != null
              ? RiveAnimation.asset(
                  Assets.icons.icCloseRiv,
                  controllers: [_controller!],
                  fit: BoxFit.contain,
                )
              : widget.isOpen
                  ? Assets.icons.icCloseSvg.svg()
                  : Assets.icons.icMenu.svg(),
        ),
      ),
    );
  }

  void _animate() {
    setState(() {
      _controller = widget.isOpen ? SimpleAnimation('Menu Open') : SimpleAnimation('Menu Close');
    });
    Future.delayed(const Duration(milliseconds: 200), () {
      setState(() {
        _controller = null;
      });
    });
  }
}
