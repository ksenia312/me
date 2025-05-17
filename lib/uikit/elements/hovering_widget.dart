import 'dart:async';

import 'package:flutter/material.dart';

import '../responsive/responsive_utils.dart';

class HoveringWidget extends StatefulWidget {
  const HoveringWidget({
    required this.builder,
    this.listener,
    this.elevation = 0,
    this.decoration,
    this.onTap,
    this.activeColor = Colors.transparent,
    super.key,
  });

  final double elevation;
  final BoxDecoration? decoration;
  final Widget Function(BuildContext, bool) builder;
  final FutureOr<void> Function(bool)? listener;
  final VoidCallback? onTap;
  final Color activeColor;

  @override
  State<HoveringWidget> createState() => _HoveringWidgetState();
}

class _HoveringWidgetState extends State<HoveringWidget> {
  bool isActive = false;

  BorderRadius? get radius => widget.decoration?.borderRadius as BorderRadius?;

  ShapeBorder? get shapeBorder => widget.decoration?.shape.shapeBorder;

  @override
  Widget build(BuildContext context) {
    final onTapResult = getOnTapResponsive();
    return Material(
      elevation: widget.elevation,
      borderRadius: shapeBorder != null ? null : radius,
      shape: shapeBorder,
      color: Colors.transparent,
      child: Ink(
        decoration: widget.decoration,
        child: GestureDetector(
          onTap: onTapResult,
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            onEnter: (_) => getOnHoverResponsive(true)?.call(),
            onExit: (_) => getOnHoverResponsive(false)?.call(),
            child: widget.builder(context, isActive),
          ),
        ),
      ),
    );
  }

  VoidCallback? getOnHoverResponsive(bool value) {
    return Responsive.get(context, def: () => () => setActive(value), s: () => null);
  }

  VoidCallback? getOnTapResponsive() {
    return widget.onTap ?? Responsive.get(context, def: () => null, s: () => setActive);
  }

  void setActive([bool? value]) {
    if (value != null) {
      setState(() => isActive = value);
    } else {
      setState(() => isActive = !isActive);
    }
    widget.listener?.call(isActive);
  }
}

extension on BoxShape? {
  ShapeBorder? get shapeBorder {
    return switch (this) {
      BoxShape.rectangle => const BeveledRectangleBorder(),
      BoxShape.circle => const CircleBorder(),
      null => null,
    };
  }
}
