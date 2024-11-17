import 'package:flutter/material.dart';
import 'package:me/uikit/theme/app_colors.dart';
import 'package:me/uikit/theme/context_extensions.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({super.key, this.onPressed, this.child, this.style});

  final void Function()? onPressed;
  final Widget? child;
  final ButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: style,
      child: child,
    );
  }
}

class AppDarkElevatedButton extends StatelessWidget {
  const AppDarkElevatedButton({super.key, this.onPressed, this.child});

  final void Function()? onPressed;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: context.themeData.copyWith(
        splashColor: AppColors.blueMore,
        splashFactory: NoSplash.splashFactory,
        highlightColor: AppColors.blueMore,
        focusColor: AppColors.blueMore,
        hoverColor: AppColors.blueMore,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(backgroundColor: AppColors.blueMore2),
        child: child,
      ),
    );
  }
}
