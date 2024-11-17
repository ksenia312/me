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
        splashColor: AppColors.lightBlueShaded,
        splashFactory: NoSplash.splashFactory,
        highlightColor: AppColors.lightBlueShaded,
        focusColor: AppColors.lightBlueShaded,
        hoverColor: AppColors.lightBlueShaded,
      ),
      child: FloatingActionButton(
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
