import 'package:flutter/material.dart';
import 'package:me/uikit/router/app_router.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
    final data = ResponsiveBreakpoints.of(context ?? AppRouter.router.routerDelegate.navigatorKey.currentContext!);

    T Function()? function;
    if (s != null && data.smallerOrEqualTo(ResponsiveSizes.s.name)) {
      function = s;
    } else if (m != null && data.smallerOrEqualTo(ResponsiveSizes.m.name)) {
      function = m;
    } else if (l != null && data.largerOrEqualTo(ResponsiveSizes.l.name)) {
      function = l;
    } else if (xl != null && data.largerOrEqualTo(ResponsiveSizes.xl.name)) {
      function = xl;
    } else if (xxl != null && data.largerOrEqualTo(ResponsiveSizes.xxl.name)) {
      function = xxl;
    }
    return function?.call() ?? def();
  }
}
