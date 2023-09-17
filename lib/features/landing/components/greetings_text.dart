import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:me/common/utils/responsive_utils.dart';
import 'package:me/localization/codegen_loader.g.dart';

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
            style: Responsive.titleStyleOf(context),
            textAlign: TextAlign.center,
          ),
        ),
        Flexible(
          child: Text(
            LocaleKeys.greeting2.tr(),
            style: Responsive.displayStyleOf(context).copyWith(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
