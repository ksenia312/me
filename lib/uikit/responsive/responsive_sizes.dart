import 'package:flutter/cupertino.dart';

import 'responsive_utils.dart';

class AppResponsiveSizes {
  static double x2Small(BuildContext context) => Responsive.get(
        context,
        def: () => 4,
        s: () => 2,
      );

  static double small(BuildContext context) => Responsive.get(
        context,
        def: () => 8,
        s: () => 6,
      );

  static double medium(BuildContext context) => Responsive.get(
        context,
        def: () => 12,
        s: () => 8,
      );

  static double large(BuildContext context) => Responsive.get(
        context,
        def: () => 16,
        s: () => 12,
      );

  static double x2Large(BuildContext context) => Responsive.get(
        context,
        def: () => 20,
        s: () => 16,
      );

  static double toolbarHeight([BuildContext? context]) => Responsive.get(
        context,
        def: () => 50,
        s: () => 70,
      );
}
