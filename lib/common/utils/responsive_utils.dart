import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

enum ResponsiveSizes { s, m, l, xl }

abstract class Responsive {
  static T get<T>(
    BuildContext context, {
    required T Function() def,
    T Function()? s,
    T Function()? m,
    T Function()? l,
    T Function()? xl,
  }) {
    final data = ResponsiveBreakpoints.of(context);

    T Function()? function;
    if (s != null && data.smallerOrEqualTo(ResponsiveSizes.s.name)) {
      function = s;
    } else if (m != null && data.smallerOrEqualTo(ResponsiveSizes.m.name)) {
      function = m;
    } else if (l != null && data.smallerOrEqualTo(ResponsiveSizes.l.name)) {
      function = l;
    } else if (xl != null && data.smallerOrEqualTo(ResponsiveSizes.xl.name)) {
      function = xl;
    }
    return function?.call() ?? def();
  }

  static TextStyle bodyStyleOf(BuildContext context, {bool bold = false}) =>
      get(
        context,
        def: () => Theme.of(context).textTheme.titleSmall!.copyWith(
              fontWeight: bold ? FontWeight.bold : FontWeight.normal,
            ),
        m: () => Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontWeight: bold ? FontWeight.bold : FontWeight.normal,
            ),
      );

  static TextStyle titleStyleOf(BuildContext context) => get(
        context,
        def: () => Theme.of(context).textTheme.titleLarge!.copyWith(
              fontWeight: FontWeight.bold,
            ),
        m: () => Theme.of(context).textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.bold,
            ),
      );

  static TextStyle displayStyleOf(BuildContext context) => get(
        context,
        def: () => Theme.of(context).textTheme.displaySmall!,
        m: () => Theme.of(context).textTheme.titleLarge!,
      );
}
