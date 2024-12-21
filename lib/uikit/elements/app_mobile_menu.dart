import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:me/uikit/elements/app_footer.dart';
import 'package:me/uikit/elements/custom_app_bar.dart';
import 'package:me/uikit/responsive/responsive_sizes.dart';

class AppMobileMenu extends StatelessWidget {
  const AppMobileMenu({super.key, required this.data, this.onClose});

  final AppMobileMenuPageData data;
  final VoidCallback? onClose;

  static void go(BuildContext context, {required List<Widget> items, List<Widget> bottomItems = const []}) {
    context.push(
      '/menu',
      extra: AppMobileMenuPageData(
        items: items,
        bottomItems: bottomItems,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final hasItems = data.items.isNotEmpty;
    final padding = EdgeInsets.symmetric(horizontal: AppResponsiveSizes.landingMargin(context));
    return Scaffold(
      appBar: CustomAppBar(backgroundColor: Colors.transparent),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (hasItems)
            Expanded(
              child: SingleChildScrollView(
                padding: padding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ...data.items.expand(
                      (e) => [
                        Flexible(child: e),
                        SizedBox(height: AppResponsiveSizes.large(context)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ...data.bottomItems.expand(
            (e) => [
              Padding(padding: padding, child: e),
              SizedBox(height: AppResponsiveSizes.large(context)),
            ],
          ),
          if (!hasItems) Spacer(),
          AppFooter(backgroundColor: Colors.transparent),
        ],
      ),
    );
  }
}

class AppMobileMenuPageData {
  const AppMobileMenuPageData({
    required this.items,
    this.bottomItems = const [],
  });

  final List<Widget> items;
  final List<Widget> bottomItems;
}
