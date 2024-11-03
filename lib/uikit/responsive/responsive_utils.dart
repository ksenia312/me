import 'package:flutter/material.dart';
import 'package:me/uikit/router/app_router.dart';
import 'package:responsive_framework/responsive_framework.dart';

const _mediumSize = 1400.0;

enum ResponsiveSizes { s, m, l, xl, xxl }

abstract class Responsive {
  static T get<T>(
    BuildContext? context, {
    required T Function() def,
    T Function()? s,
    T Function()? m,
    T Function()? l,
    T Function()? xl,
    T Function()? xxl,
  }) {
    final requireContext = context ?? AppRouter.router.routerDelegate.navigatorKey.currentContext!;
    final data = ResponsiveBreakpoints.of(requireContext);
    final screenWidth = MediaQuery.sizeOf(requireContext).width;
    T Function()? function;

    if (s != null && data.smallerOrEqualTo(ResponsiveSizes.s.name)) {
      function = s;
    } else if (m != null && data.smallerOrEqualTo(ResponsiveSizes.m.name)) {
      function = m;
    } else if (xxl != null && data.largerOrEqualTo(ResponsiveSizes.xxl.name) && screenWidth > _mediumSize) {
      function = xxl;
    } else if (xl != null && data.largerOrEqualTo(ResponsiveSizes.xl.name) && screenWidth > _mediumSize) {
      function = xl;
    } else if (l != null && data.largerOrEqualTo(ResponsiveSizes.l.name) && screenWidth > _mediumSize) {
      function = l;
    }
    return function?.call() ?? def();
  }
}
