import 'package:me/uikit/localization/localization.dart';
import 'package:flutter/material.dart';
import 'package:me/features/landing/notifier/pet_project_list_notifier.dart';
import 'package:me/uikit/components/project_cards_grid.dart';
import 'package:me/uikit/elements/app_title.dart';

import 'package:me/uikit/responsive/responsive_sizes.dart';

class ProjectsView extends StatefulWidget {
  const ProjectsView({super.key});

  @override
  State<ProjectsView> createState() => _ProjectsViewState();
}

class _ProjectsViewState extends State<ProjectsView> {
  late final _notifier = PetProjectListNotifier.instance..addListener(() => setState(() {}));

  @override
  void initState() {
    _notifier.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final petProjects = context.keys.petProjects;
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
          AppTitle(
            title: petProjects.title,
            subtitle: petProjects.subtitle,
            alignment: AppTitleAlignment.left,
          ),
          SizedBox(height: AppResponsiveSizes.x3Large(context)),
          ProjectCardsGrid(vms: _notifier.vms, expectedCount: _notifier.count),
        ],
      ),
    );
  }
}
