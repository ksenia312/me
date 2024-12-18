import 'package:flutter/material.dart';
import 'package:me/uikit/theme/app_colors.dart';
import 'package:me/uikit/theme/context_extensions.dart';

class AppFloatingActionButton extends StatelessWidget {
  const AppFloatingActionButton({super.key, this.onPressed, this.child});

  final void Function()? onPressed;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: context.themeData.copyWith(
        splashColor: AppColors.icyBlue,
        splashFactory: NoSplash.splashFactory,
        highlightColor: AppColors.icyBlue,
        focusColor: AppColors.icyBlue,
        hoverColor: AppColors.icyBlue,
      ),
      child: FloatingActionButton(
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
