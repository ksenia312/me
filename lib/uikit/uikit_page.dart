import 'package:flutter/material.dart';
import 'package:me/generated/assets.gen.dart';
import 'package:me/uikit/theme/context_extensions.dart';
import 'package:me/uikit/components/summary_circle.dart';

import 'components/custom_app_bar.dart';
import 'theme/app_colors.dart';

class UikitPage extends StatelessWidget {
  const UikitPage({super.key});

  @override
  Widget build(BuildContext context) {
    final widgets = [
      Text('Display Large'.toUpperCase(), style: context.textTheme.displayLarge),
      Text('Display Medium'.toUpperCase(), style: context.textTheme.displayMedium),
      Text('Display Small'.toUpperCase(), style: context.textTheme.displaySmall),
      Text('Headline Small', style: context.textTheme.headlineSmall),
      Text('Title Large', style: context.textTheme.titleLarge),
      Text('Title Medium', style: context.textTheme.titleMedium),
      Text('Title Small', style: context.textTheme.titleSmall),
      Text('Body Large', style: context.textTheme.bodyLarge),
      Text('Body Medium', style: context.textTheme.bodyMedium),
      Text('Body Small', style: context.textTheme.bodySmall),
      Text('Label Large', style: context.textTheme.labelLarge),
      Text('Label Medium', style: context.textTheme.labelMedium),
      Text('Label Small', style: context.textTheme.labelSmall),
      Wrap(
        spacing: 16,
        runSpacing: 16,
        children: [
          SummaryCircle(
            title: 'Summary Circle',
            subtitle: 'Summary Circle Subtitle',
          ),
          SummaryCircle(
            title: '6 years',
            subtitle: 'total experience',
          ),
        ],
      ),
      SizedBox(
        width: 796,
        height: 732,
        child: Image.asset(Assets.images.me.path, fit: BoxFit.scaleDown),
      ),
    ];
    return Scaffold(
      appBar: CustomAppBar(
        rightTabs: [
          CustomToolbarTab(title: 'title', onPressed: (_) {}),
        ],
        leftTabs: [
          CustomToolbarTab(
            titleWidget: Icon(Icons.add),
            onPressed: (_) {},
          ),
        ],
      ),
      backgroundColor: AppColors.blue,
      body: ListView.separated(
        itemCount: widgets.length,
        itemBuilder: (context, index) {
          return widgets[index];
        },
        separatorBuilder: (context, index) => SizedBox(height: 16),
      ),
    );
  }
}
