import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:me/uikit/elements/custom_app_bar.dart';
import 'package:me/uikit/responsive/responsive_sizes.dart';

class AppMobileMenu extends StatelessWidget {
  const AppMobileMenu({super.key, required this.data, this.onClose});

  final AppMobileMenuPageData data;
  final VoidCallback? onClose;

  static void go(BuildContext context, {required List<Widget> items}) {
    context.push('/menu', extra: AppMobileMenuPageData(items: items));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(backgroundColor: Colors.transparent),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: AppResponsiveSizes.landingMargin(context),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            ...data.items.expand(
              (e) => [
                Flexible(child: e),
                SizedBox(height: AppResponsiveSizes.medium(context)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AppMobileMenuPageData {
  const AppMobileMenuPageData({required this.items});

  final List<Widget> items;
}
