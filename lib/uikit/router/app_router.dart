import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:me/features/error/error_page.dart';
import 'package:me/features/landing/view/landing_page.dart';
import 'package:me/uikit/uikit_page.dart';

class AppRouter {
  AppRouter._();

  static final router = GoRouter(
    initialLocation: '/',
    routes: routes,
    errorBuilder: (context, state) => const ErrorPage(),
  );

  static List<GoRoute> routes = [
    GoRoute(
      path: '/',
      builder: (context, state) => const LandingPage(),
    ),
    if (kDebugMode)
      GoRoute(
        path: '/uikit',
        name: 'uikit',
        builder: (context, state) => const UikitPage(),
      ),
  ];
}
