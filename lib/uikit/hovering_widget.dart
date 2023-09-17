import 'package:flutter/material.dart';

import '../common/utils/responsive_utils.dart';

class HoveringWidget extends StatefulWidget {
  const HoveringWidget({
    required this.builder,
    this.elevation = 0,
    this.decoration,
    this.onTap,
    this.activeColor = Colors.transparent,
    super.key,
  });

  final double elevation;
  final BoxDecoration? decoration;
  final Widget Function(BuildContext, bool) builder;
  final VoidCallback? onTap;
  final Color activeColor;

  @override
  State<HoveringWidget> createState() => _HoveringWidgetState();
}

class _HoveringWidgetState extends State<HoveringWidget> {
  bool isActive = false;

  BorderRadius? get radius => widget.decoration?.borderRadius as BorderRadius?;

  @override
  Widget build(BuildContext context) {
    final onTapResult = getOnTapResponsive();
    return Material(
      elevation: widget.elevation,
      borderRadius: radius,
      color: Colors.transparent,
      child: Ink(
        decoration: widget.decoration,
        child: MouseRegion(
          cursor: onTapResult != null
              ? SystemMouseCursors.click
              : SystemMouseCursors.basic,
          onEnter: (_) => getOnHoverResponsive(true)?.call(),
          onExit: (_) => getOnHoverResponsive(false)?.call(),
          child: GestureDetector(
            onTap: onTapResult,
            child: widget.builder(context, isActive),
          ),
        ),
      ),
    );
  }

  VoidCallback? getOnHoverResponsive(bool value) {
    return Responsive.get(
      context,
      def: () => () {
        setActive(value);
      },
      s: () => null,
    );
  }

  VoidCallback? getOnTapResponsive() {
    return widget.onTap ??
        Responsive.get(
          context,
          def: () => null,
          s: () => setActive,
        );
  }

  void setActive([bool? value]) {
    if (value != null) {
      setState(() => isActive = value);
    } else {
      setState(() => isActive = !isActive);
    }
  }
}
