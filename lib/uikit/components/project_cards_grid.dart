import 'package:flutter/material.dart';
import 'package:me/features/pet_project/notifier/pet_project_vm.dart';
import 'package:me/uikit/components/project_card.dart';
import 'package:me/uikit/responsive/responsive_utils.dart';

class ProjectCardsGrid extends StatelessWidget {
  const ProjectCardsGrid({super.key, required this.vms});

  final List<PetProjectCardVM> vms;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: Responsive.get(
        context,
        def: () => 3,
        xxl: () => 6,
        xl: () => 5,
        l: () => 4,
        m: () => 2,
        s: () => 1,
      ),
      shrinkWrap: true,
      childAspectRatio: Responsive.get(
        context,
        def: () => 357 / 357,
        xxl: () => 357 / 200,
        m: () => 357 / 420,
        s: () => 328 / 241,
      ),
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      children: [...vms.map((e) => ProjectCard(vm: e))],
    );
  }
}
