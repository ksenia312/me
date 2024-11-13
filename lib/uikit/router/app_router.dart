import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:me/features/error/not_found_404_page.dart';
import 'package:me/features/landing/view/landing_page.dart';
import 'package:me/features/pet_project/notifier/pet_project_vm.dart';
import 'package:me/features/pet_project/view/pet_project_page.dart';
import 'package:me/uikit/uikit_page.dart';

class AppRouter {
  AppRouter._();

  static final router = GoRouter(
    initialLocation: '/',
    routes: routes,
    errorBuilder: (context, state) => const NotFound404Page(),
  );

  static List<GoRoute> routes = [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => FadeTransitionPage(child: const LandingPage()),
      routes: [
        if (kDebugMode)
          GoRoute(
            path: 'uikit',
            name: 'uikit',
            pageBuilder: (context, state) => FadeTransitionPage(child: const UikitPage()),
          ),
        GoRoute(
          path: 'pet-project/:id',
          name: 'pet-project',
          pageBuilder: (context, state) {
            return FadeTransitionPage(
              child: Builder(
                builder: (context) {
                  final data = state.extra as PetProjectLoadedPage?;
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
      ],
    ),
  ];
}

class FadeTransitionPage extends CustomTransitionPage {
  FadeTransitionPage({
    required super.child,
  }) : super(
          transitionDuration: const Duration(milliseconds: 200),
          reverseTransitionDuration: const Duration(milliseconds: 20),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            // Create a slide transition for forward
            final slideTransition = SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0.0, 1.0),
                end: Offset.zero,
              ).animate(
                CurvedAnimation(
                  parent: animation,
                  curve: Curves.easeInOut,
                ),
              ),
              child: child,
            );

            // Create a fade transition for reverse
            final fadeTransition = FadeTransition(
              opacity: Tween<double>(
                begin: 0.0,
                end: 1.0,
              ).animate(
                CurvedAnimation(
                  parent: secondaryAnimation,
                  curve: Curves.easeInOut,
                ),
              ),
              child: child,
            );

            // Determine the animation direction
            return animation.status == AnimationStatus.reverse ? child : slideTransition;
          },
        );
}
