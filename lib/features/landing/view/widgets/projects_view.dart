import 'package:flutter/material.dart';
import 'package:me/uikit/elements/app_title.dart';
import 'package:me/uikit/responsive/responsive_sizes.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        AppResponsiveSizes.landingMargin(context),
        AppResponsiveSizes.x2Large(context) + AppResponsiveSizes.toolbarHeight(context),
        AppResponsiveSizes.landingMargin(context),
        AppResponsiveSizes.large(context),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppTitle(title: 'PET PROJECTS', subtitle: 'Unique, creative, mine!'),
          SizedBox(height: 10000),
        ],
      ),
    );
  }
}
