import 'package:flutter/material.dart';
import 'package:me/uikit/elements/app_back_button.dart';
import 'package:me/uikit/elements/custom_app_bar.dart';

class NotFound404Page extends StatelessWidget {
  const NotFound404Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(leftTabs: [AppBackButton()]),
      body: Center(
        child: Text('Error page'),
      ),
    );
  }
}
