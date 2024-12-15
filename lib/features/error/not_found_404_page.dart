import 'package:me/uikit/localization/localization_temp.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:me/uikit/elements/app_back_button.dart';
import 'package:me/uikit/elements/custom_app_bar.dart';
import 'package:me/uikit/localization/codegen_loader.g.dart';
import 'package:me/uikit/responsive/responsive_sizes.dart';
import 'package:me/uikit/theme/context_extensions.dart';

class NotFound404Page extends StatelessWidget {
  const NotFound404Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(leftTabs: [AppBackButton()]),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(AppResponsiveSizes.x3Large(context)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(LocaleKeys.notFoundPageTitle.tr(), style: context.textTheme.displayLarge),
              SizedBox(height: AppResponsiveSizes.x3Large(context)),
              Text(LocaleKeys.notFoundPageSubtitle.tr(), style: context.textTheme.bodyLarge),
              SizedBox(height: AppResponsiveSizes.x3Large(context)),
              ElevatedButton(
                onPressed: () => context.go('/'),
                child: Text(LocaleKeys.notFoundPageButton.tr()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
