import 'package:flutter/material.dart';

class ResponsiveListener extends StatelessWidget {
  const ResponsiveListener({super.key, required this.child, required this.onScreenSizeChange});

  final Widget child;
  final void Function() onScreenSizeChange;

  @override
  Widget build(BuildContext context) {
    return NotificationListener<SizeChangedLayoutNotification>(
      onNotification: (_) {
        onScreenSizeChange();
        return true;
      },
      child: SizeChangedLayoutNotifier(child: child),
    );
  }
}
