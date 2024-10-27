import 'package:go_router/go_router.dart';
import 'package:me/features/landing/landing.dart';
import 'package:me/uikit/uikit_page.dart';

class AppRouter {
  AppRouter._();

  static final router = GoRouter(
    initialLocation: '/',
    routes: routes,
  );

  static List<GoRoute> routes = [
    GoRoute(
      path: '/',
      builder: (context, state) => const Landing(),
    ),
    GoRoute(
      path: '/uikit',
      name: 'uikit',
      builder: (context, state) => const UikitPage(),
    ),
  ];
}
