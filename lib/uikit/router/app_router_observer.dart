import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

mixin AppRouterObserver<T extends StatefulWidget> on State<T> {
  late GoRouter _router = GoRouter.of(context);

  String? _previousLocation;

  void didChangeLocation(String location, String? previousLocation);

  @override
  void initState() {
    _listener();
    _router.routerDelegate.addListener(_listener);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _router = GoRouter.of(context)..routerDelegate.addListener(_listener);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    try {
      _router.routerDelegate.removeListener(_listener);
    } catch (_) {}
    super.dispose();
  }

  void _listener() {
    final location = _router.getLocation();
    if (_previousLocation != location) {
      didChangeLocation(location, _previousLocation);
    }
    _previousLocation = location;
  }
}

extension on GoRouter {
  String getLocation() {
    final currentConfiguration = routerDelegate.currentConfiguration;
    final lastMatch = currentConfiguration.isNotEmpty ? currentConfiguration.last : null;
    final matchList = lastMatch is ImperativeRouteMatch ? lastMatch.matches : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
