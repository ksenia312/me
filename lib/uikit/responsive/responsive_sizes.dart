import 'package:flutter/cupertino.dart';

import 'responsive_utils.dart';

class AppResponsiveSizes {
  AppResponsiveSizes._();

  static double x2Small(BuildContext context) => Responsive.get(
        context,
        def: () => 4,
        s: () => 2,
      );

  static double small(BuildContext context) => Responsive.get(
        context,
        def: () => 8,
        s: () => 4,
      );

  static double medium(BuildContext context) => Responsive.get(
        context,
        def: () => 12,
        s: () => 6,
      );

  static double large(BuildContext context) => Responsive.get(
        context,
        def: () => 16,
        s: () => 8,
      );

  static double x2Large(BuildContext context) => Responsive.get(
        context,
        def: () => 20,
        s: () => 12,
      );

  static double x3Large(BuildContext context) => Responsive.get(
        context,
        def: () => 24,
        s: () => 16,
      );

  static double x4Large(BuildContext context) => Responsive.get(
        context,
        def: () => 32,
        s: () => 18,
      );

  static double x5Large(BuildContext context) => Responsive.get(
        context,
        def: () => 44,
        m: () => 24,
        s: () => 20,
      );

  static double x8large(BuildContext context) => Responsive.get(
        context,
        def: () => 66,
        s: () => 52,
      );

  static double x10large(BuildContext context) => Responsive.get(
        context,
        def: () => 88,
        s: () => 66,
      );

  static double landingMargin(BuildContext context) => Responsive.get(
        context,
        def: () => 64,
        m: () => 16.0,
        s: () => 16.0,
      );

  static double toolbarHeight([BuildContext? context]) => Responsive.get(
        context,
        def: () => 50,
        s: () => 60,
      );

  static double shadowBlurRadius([BuildContext? context]) => Responsive.get(
        context,
        def: () => 8,
        m: () => 4,
      );
}
