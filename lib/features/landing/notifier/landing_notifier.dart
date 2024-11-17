
import 'package:flutter/material.dart';

class LandingNotifier extends ChangeNotifier {
  late final scrollController = ScrollController()..addListener( notifyListeners);

  final welcomeKey = GlobalKey();
  final summaryKey = GlobalKey();
  final projectsKey = GlobalKey();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}