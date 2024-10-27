import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:me/app/firebase/firebase_options.dart';
import 'package:me/generated/assets.gen.dart';
import 'package:me/localization/locales.dart';
import 'package:me/uikit/theme/theme.dart';

import 'app/router/app_router.dart';
import 'uikit/responsive/responsive_builder.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      precacheImage(
        AssetImage(Assets.images.me.path),
        context,
        size: Size(796, 732),
      );
    });
    super.initState();
  }

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
