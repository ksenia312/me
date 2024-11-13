import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:me/uikit/elements/custom_app_bar.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({super.key, this.hasIndents = true});

  final bool hasIndents;

  @override
  Widget build(BuildContext context) {
    return CustomToolbarTab(
      hasIndents: hasIndents,
      titleWidget: Icon(Icons.arrow_back_ios_new, size: 12),
      onPressed: (_) {
        try {
          GoRouter.of(context).pop();
        } catch (e) {
          context.go('/');
        }
      },
    );
  }
}
