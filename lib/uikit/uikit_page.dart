import 'package:flutter/material.dart';
import 'package:me/domain/pet_project/model/pet_project_data.dart';
import 'package:me/features/pet_project/notifier/pet_project_vm.dart';
import 'package:me/uikit/components/main_image.dart';
import 'package:me/uikit/components/project_cards_grid.dart';
import 'package:me/uikit/custom_paint/background_wave_paint.dart';
import 'package:me/uikit/elements/app_back_button.dart';
import 'package:me/uikit/elements/app_chip.dart';
import 'package:me/uikit/elements/app_title.dart';
import 'package:me/uikit/elements/app_transform_y_animation.dart';
import 'package:me/uikit/elements/app_video_player.dart';
import 'package:me/uikit/elements/custom_app_bar.dart';
import 'package:me/uikit/responsive/responsive_sizes.dart';
import 'package:me/uikit/theme/app_colors.dart';
import 'package:me/uikit/theme/context_extensions.dart';
import 'package:me/uikit/components/summary_circle.dart';
import 'package:video_player/video_player.dart';

class UikitPage extends StatelessWidget {
  const UikitPage({super.key});

  @override
  Widget build(BuildContext context) {
    final widgets = [
      Center(
        child: SizedBox.square(
          dimension: 200,
          child: AppTransformYAnimation(
            faceChild: _Widget1(),
            backChild: _Widget2(),
            duration: const Duration(milliseconds: 5000),
          ),
        ),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height / 2,
        child: AppVideoPlayer(
          url:
              'https://firebasestorage.googleapis.com/v0/b/xenikii-d8064.appspot.com/o/conneqt-android-demo.mp4?alt=media&token=dd7b167a-5d8d-4fbb-82ab-c1b6f2da8878',
          aspectRatio: 1,
        ),
      ),
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
            activeContent: ActiveSummaryText(text: 'Summary Circle Subtitle Active'),
          ),
          SummaryCircle(
            title: '6 years',
            subtitle: 'total experience',
            activeContent: ActiveSummaryText(
              text: 'total experience Active total experience Active total experience Active total experience Active',
            ),
          ),
        ],
      ),
      Wrap(
        spacing: 10,
        runSpacing: 10,
        children: [
          AppChip(text: 'Flutter'),
          AppChip(text: 'Dart'),
          AppChip(text: 'Java'),
        ],
      ),
      Center(child: MainImage()),
      Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppTitle(title: 'FLUTTER DEVELOPER', subtitle: 'Kseniia Nikitina', alignment: AppTitleAlignment.left),
            AppTitle(title: 'FLUTTER DEVELOPER', subtitle: 'Kseniia Nikitina', alignment: AppTitleAlignment.right),
          ],
        ),
      ),
      ProjectCardsGrid(
        vms: [
          PetProjectCardVM(data: _kData, imageUrl: ''),
        ],
      ),
    ];
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        rightTabs: [
          CustomToolbarTab.listItem(
            title: 'title',
            onPressed: (_) {},
          ),
        ],
        leftTabs: [AppBackButton()],
      ),
      backgroundColor: AppColors.blue,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: AppResponsiveSizes.toolbarHeight(context) + AppResponsiveSizes.small(context),
                horizontal: AppResponsiveSizes.landingMargin(context),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ...widgets.expand((e) => [e, const SizedBox(height: 16)]),
                ],
              ),
            ),
            BackgroundWavePaint(
              waveHeight: MediaQuery.sizeOf(context).width / 8,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 2),
                child: SizedBox(height: 300.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final _kData = PetProjectData(
  id: 'conneqt',
  order: 1,
  titles: {'en': 'Conneqt'},
  subtitles: {'en': 'Unique, creative, mine!'},
  imageStoragePath: 'conneqt-small.png',
  accentColor: Color(0xFF4361EE),
);

class _Widget1 extends StatelessWidget {
  const _Widget1();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        color: Colors.red,
        shape: BoxShape.circle,
      ),
      child: Center(child: Text('_Widget1')),
    );
  }
}

class _Widget2 extends StatelessWidget {
  const _Widget2();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green),
        color: Colors.yellow,
        shape: BoxShape.circle,
      ),
      child: Center(child: Text('_Widget2')),
    );
  }
}
