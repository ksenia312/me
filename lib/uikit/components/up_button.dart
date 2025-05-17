import 'package:flutter/material.dart';
import 'package:me/generated/assets.gen.dart';
import 'package:me/uikit/elements/app_floating_action_button.dart';
import 'package:me/uikit/extensions/scroll_extension.dart';

class UpButton extends StatelessWidget {
  const UpButton({super.key, required this.controller});

  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    final shouldShow = controller.hasClients && controller.position.pixels > MediaQuery.sizeOf(context).height / 2;

    if (shouldShow) {
      return AppFloatingActionButton(
        onPressed: () => controller.animateWithFlatSpeed(context, offset: 0),
        child: Assets.icons.icUpArrow.svg(),
      );
    }

    return SizedBox.shrink();
  }
}
