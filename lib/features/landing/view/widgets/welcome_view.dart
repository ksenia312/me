import 'package:flutter/material.dart';
import 'package:me/uikit/components/main_image.dart';
import 'package:me/uikit/elements/app_title.dart';
import 'package:me/uikit/responsive/responsive_sizes.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppResponsiveSizes.landingMargin(context)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppTitle(title: 'FLUTTER DEVELOPER', subtitle: 'Kseniia Nikitina'),
          SizedBox(height: AppResponsiveSizes.x10large(context)),
          Align(alignment: Alignment.centerLeft, child: MainImage()),
        ],
      ),
    );
  }
}
