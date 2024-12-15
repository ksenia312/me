import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:me/generated/assets.gen.dart';
import 'package:me/uikit/elements/custom_app_bar.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomToolbarTab(
      titleWidget: Assets.icons.icBackArrow.svg(height: 20, width: 20),
      onPressed: (_) {
        try {
          context.pop();
        } catch (e) {
          context.go('/');
        }
      },
    );
  }
}
