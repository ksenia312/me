import 'package:flutter/material.dart';
import 'package:me/features/download_file/view/download_cv_button.dart';
import 'package:me/features/landing/notifier/experience_vm.dart';
import 'package:me/generated/assets.gen.dart';
import 'package:me/uikit/components/experience_section/experience_section.dart';
import 'package:me/uikit/elements/app_title.dart';
import 'package:me/uikit/localization/localization.dart';
import 'package:me/uikit/responsive/responsive_sizes.dart';

class ExperienceView extends StatelessWidget {
  const ExperienceView({super.key});

  @override
  Widget build(BuildContext context) {
    final experience = context.keys.experience;
    final greenflux = experience.greenflux;
    final friflex = experience.friflex;
    final agroStab = experience.agroStab;

    final greenfluxVM = ExperienceVM(
      title: greenflux.title,
      organization: greenflux.organization,
      location: greenflux.location,
      image: Assets.images.greenfluxImage.svg(),
      duration: greenflux.duration,
      subtitle: greenflux.subtitle,
      skills: [
        greenflux.skills.skill1,
        greenflux.skills.skill2,
        greenflux.skills.skill3,
        greenflux.skills.skill4,
        greenflux.skills.skill5,
        greenflux.skills.skill6,
        greenflux.skills.skill7,
        greenflux.skills.skill8,
        greenflux.skills.skill9,
        greenflux.skills.skill10,
        greenflux.skills.skill11,
        greenflux.skills.skill12,
        greenflux.skills.skill13,
      ],
      achievements: [
        greenflux.achievements.achievement1,
        greenflux.achievements.achievement2,
        greenflux.achievements.achievement3,
        greenflux.achievements.achievement4,
        greenflux.achievements.achievement5,
        greenflux.achievements.achievement6,
        greenflux.achievements.achievement7,
        greenflux.achievements.achievement8,
      ],
      order: ExperienceSectionOrder.first,
    );
    final friflexVM = ExperienceVM(
      title: friflex.title,
      organization: friflex.organization,
      location: friflex.location,
      image: Assets.images.friflexImage.svg(),
      duration: friflex.duration,
      subtitle: friflex.subtitle,
      skills: [
        friflex.skills.skill1,
        friflex.skills.skill2,
        friflex.skills.skill3,
        friflex.skills.skill4,
        friflex.skills.skill5,
        friflex.skills.skill6,
        friflex.skills.skill7,
        friflex.skills.skill8,
        friflex.skills.skill9,
        friflex.skills.skill10,
        friflex.skills.skill11,
        friflex.skills.skill12,
        friflex.skills.skill13,
        friflex.skills.skill14,
      ],
      achievements: [
        friflex.achievements.achievement1,
        friflex.achievements.achievement2,
        friflex.achievements.achievement3,
        friflex.achievements.achievement4,
        friflex.achievements.achievement5,
        friflex.achievements.achievement6,
        friflex.achievements.achievement7,
        friflex.achievements.achievement8,
      ],
      order: ExperienceSectionOrder.middle,
    );

    final agroStabVM = ExperienceVM(
      title: agroStab.title,
      organization: agroStab.organization,
      location: agroStab.location,
      image: Assets.images.agroStabImage.svg(),
      duration: agroStab.duration,
      subtitle: agroStab.subtitle,
      skills: [
        agroStab.skills.skill1,
        agroStab.skills.skill2,
        agroStab.skills.skill3,
        agroStab.skills.skill4,
        agroStab.skills.skill5,
        agroStab.skills.skill6,
        agroStab.skills.skill7,
        agroStab.skills.skill8,
      ],
      achievements: [
        agroStab.achievements.achievement1,
        agroStab.achievements.achievement2,
        agroStab.achievements.achievement3,
        agroStab.achievements.achievement4,
        agroStab.achievements.achievement5,
        agroStab.achievements.achievement6,
        agroStab.achievements.achievement7,
        agroStab.achievements.achievement8,
      ],
      order: ExperienceSectionOrder.last,
    );
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
            title: experience.title,
            subtitle: experience.subtitle,
            alignment: AppTitleAlignment.left,
          ),
          SizedBox(height: AppResponsiveSizes.x3Large(context)),
          ExperienceSection(vm: greenfluxVM),
          ExperienceSection(vm: friflexVM),
          ExperienceSection(vm: agroStabVM),
          SizedBox(height: AppResponsiveSizes.x8large(context)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(context.keys.experience.cv.caption),
              SizedBox(height: AppResponsiveSizes.x4Large(context)),
              DownloadCVButton(),
            ],
          ),
        ],
      ),
    );
  }
}
