import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:me/localization/codegen_loader.g.dart';
import 'package:me/uikit/responsive/responsive_utils.dart';
import 'package:me/uikit/theme/context_extensions.dart';

class GreetingsText extends StatelessWidget {
  const GreetingsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Text(
            LocaleKeys.greeting.tr(),
            style: context.textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
        ),
        Flexible(
          child: Text(
            LocaleKeys.greeting2.tr(),
            style: context.textTheme.displaySmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: context.colorScheme.primary,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
