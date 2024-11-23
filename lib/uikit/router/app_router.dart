import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:me/features/error/not_found_404_page.dart';
import 'package:me/features/landing/view/landing_page.dart';
import 'package:me/features/pet_project/notifier/pet_project_vm.dart';
import 'package:me/features/pet_project/view/pet_project_page.dart';
import 'package:me/uikit/elements/app_mobile_menu.dart';
import 'package:me/uikit/uikit_page.dart';

class AppRouter {
  AppRouter._();

  static final router = GoRouter(
    initialLocation: '/',
    routes: routes,
    errorBuilder: (context, state) => const NotFound404Page(),
  );

  static List<RouteBase> routes = [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => AppTransitionPage(
        child: LandingPage(),
      ),
    ),
    GoRoute(
      path: '/menu',
      pageBuilder: (context, state) {
        final data = state.extra as AppMobileMenuPageData?;
        if (data != null) {
          return NoTransitionPage(
            child: AppMobileMenu(data: data),
          );
        }

        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          context.go('/');
        });

        return AppTransitionPage(child: NotFound404Page());
      },
    ),
    if (kDebugMode)
      GoRoute(
        path: '/uikit',
        name: 'uikit',
        pageBuilder: (context, state) => AppTransitionPage(child: const UikitPage()),
      ),
    GoRoute(
      path: '/pet-project/:id',
      name: 'pet-project',
      pageBuilder: (context, state) {
        return AppTransitionPage(
          child: Builder(
            builder: (context) {
              final data = state.extra as PetProjectPageVM?;
              if (data != null) {
                return PetProjectDataPage(loaded: data);
              }
              final id = state.pathParameters['id'];
              if (id != null) {
                return PetProjectIDPage(id: id);
              }

              return NotFound404Page();
            },
          ),
        );
      },
    ),
  ];
}

class AppTransitionPage extends CustomTransitionPage {
  AppTransitionPage({
    required super.child,
  }) : super(
          transitionDuration: const Duration(milliseconds: 200),
          reverseTransitionDuration: const Duration(milliseconds: 20),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final slideTransition = SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0.0, 0.3),
                end: Offset.zero,
              ).animate(
                CurvedAnimation(
                  parent: animation,
                  curve: Curves.easeInOut,
                ),
              ),
              child: child,
            );

            return animation.status == AnimationStatus.reverse ? child : slideTransition;
          },
        );
}
