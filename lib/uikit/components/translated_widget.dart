import 'package:flutter/material.dart';
import 'package:me/uikit/responsive/responsive_utils.dart';

class TranslatedWidget extends StatelessWidget {
  const TranslatedWidget({super.key, required this.child});

  static double waveHeightOf(BuildContext context) {
    return Responsive.get(
      context,
      def: () => MediaQuery.sizeOf(context).width / 10,
      xl: () => MediaQuery.sizeOf(context).width / 12,
      xxl: () => MediaQuery.sizeOf(context).width / 24,
    );
  }

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -waveHeightOf(context)),
      child: child,
    );
  }
}
