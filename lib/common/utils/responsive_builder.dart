import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'responsive_utils.dart';

abstract class ResponsiveBuilder {
  static List<Breakpoint> breakpoints = [
    Breakpoint(
      start: 0,
      end: 450,
      name: ResponsiveSizes.s.name,
    ),
    Breakpoint(
      start: 451,
      end: 800,
      name: ResponsiveSizes.m.name,
    ),
    Breakpoint(
      start: 801,
      end: 1920,
      name: ResponsiveSizes.l.name,
    ),
    Breakpoint(
      start: 1921,
      end: double.infinity,
      name: ResponsiveSizes.xl.name,
    ),
  ];

  static Widget builder(BuildContext context, Widget? child) {
    return ResponsiveBreakpoints.builder(
      child: scaleWrapper(child!),
      breakpoints: breakpoints,
    );
  }

  static Widget scaleWrapper(Widget child) {
    return Builder(
      builder: (context) {
        return ResponsiveScaledBox(
          width: ResponsiveValue<double>(
            context,
            conditionalValues: [
              Condition.between(start: 0, end: 350, value: 350),
            ],
          ).value,
          child: child,
        );
      },
    );
  }
}
