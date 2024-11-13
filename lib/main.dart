import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:me/config/firebase_options.dart';
import 'package:me/uikit/localization/locales.dart';
import 'package:me/uikit/components/main_image.dart';
import 'package:me/uikit/responsive/responsive_builder.dart';
import 'package:me/uikit/router/app_router.dart';
import 'package:me/uikit/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await MainImage.load();

  usePathUrlStrategy();

  runApp(
    EasyLocalization(
      supportedLocales: supportedLocales,
      fallbackLocale: fallbackLocale,
      startLocale: fallbackLocale,
      path: 'assets/translations',
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder.builder(
      context,
      Builder(builder: (context) {
        return MaterialApp.router(
          title: 'Xenikii',
          debugShowCheckedModeBanner: false,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          theme: AppTheme.dataOf(context),
          routerConfig: AppRouter.router,
        );
      }),
    );
  }
}
