import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:me/uikit/elements/custom_app_bar.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomToolbarTab(
      titleWidget: Icon(Icons.arrow_back_ios_new, size: 20),
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
