import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:go_router/go_router.dart';
import 'package:me/app/config/firebase_options.dart';
import 'package:me/generated/assets.gen.dart';
import 'package:me/uikit/components/main_image.dart';
import 'package:me/uikit/localization/localization.dart';
import 'package:me/uikit/responsive/responsive_builder.dart';
import 'package:me/uikit/router/app_router.dart';
import 'package:me/uikit/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppLocalization.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await MainImage.load();

  final assetsToCache = <SvgGenImage>[
    ...Assets.icons.values.whereType<SvgGenImage>(),
    Assets.images.greenfluxImage,
    Assets.images.friflexImage,
    Assets.images.agroStabImage,
  ];

  await Future.wait(
    assetsToCache.map(
      (asset) async {
        final loader = SvgAssetLoader(asset.path);
        await svg.cache.putIfAbsent(loader.cacheKey(null), () => loader.loadBytes(null));
      },
    ),
  );

  usePathUrlStrategy();
  GoRouter.optionURLReflectsImperativeAPIs = true;

  runApp(
    AppLocalization(child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder.builder(
      context,
      Builder(
        builder: (context) {
          return MaterialApp.router(
            title: 'Kseniia',
            debugShowCheckedModeBanner: false,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            theme: AppTheme.dataOf(context),
            routerConfig: AppRouter.router,
          );
        },
      ),
    );
  }
}
