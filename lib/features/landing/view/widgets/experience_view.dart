import 'package:flutter/material.dart';
import 'package:me/features/landing/notifier/experience_vm.dart';
import 'package:me/generated/assets.gen.dart';
import 'package:me/uikit/components/experience_section/experience_section.dart';
import 'package:me/uikit/elements/app_title.dart';
import 'package:me/uikit/responsive/responsive_sizes.dart';

class ExperienceView extends StatelessWidget {
  const ExperienceView({super.key});

  @override
  Widget build(BuildContext context) {
    final greenflux = ExperienceVM(
      title: 'Mobile Application Developer',
      organization: 'Greenflux Assets B.V.',
      location: 'Amsterdam, Netherlands (Hybrid)',
      image: Assets.images.greenfluxImage.svg(),
      duration: 'February 2024 – Present',
      subtitle: 'Developing applications for electric vehicle charging',
      skills: [
        "Dart",
        "Flutter",
        "Google Play",
        "Firebase",
        "Git",
        "ChatGPT",
        "BloC",
        "App Store",
        "SwiftUI",
        "English",
        "REST APIs",
        "Figma",
        "Object-Oriented Programming (OOP)",
      ],
      achievements: [
        'Supported the full development cycle: from technical specification to publication',
        'Maintained a system of 10+ applications with a shared code base',
        'Set up linter, formatting, and introduced a common class system for all applications',
        'Created pipelines to check pull requests and publish applications, scripts to simplify processes',
        'Set up Git Flow and monitored its compliance',
        'Worked closely with Google Maps, notifications, and other complex tasks',
      ],
      order: ExperienceSectionOrder.first,
    );
    final friflex = ExperienceVM(
      title: 'Mobile Application Developer',
      organization: 'Friflex',
      location: 'Moscow, Russia',
      image: Assets.images.friflexImage.svg(),
      duration: 'August 2022 – December 2023',
      subtitle: 'Development of services for recognizing chess and draughts games',
      skills: [
        "Firebase",
        "Databases",
        "PostgreSQL",
        "Figma",
        "Localization",
        "ChatGPT",
        "Dart",
        "REST APIs",
        "Flutter",
        "Google Play",
        "Design Patterns",
        "Git",
        "BloC",
        "Object-Oriented Programming (OOP)",
      ],
      achievements: [
        'Engaged in all aspects of mobile application development, including setup, architecture creation, integration with backend, and publication',
        'Developed custom Flutter and Dart packages, configuring dependencies',
        'Integrated third-party services',
        'Developed administrative web dashboards',
        'Played a significant role in backend development using Dart',
        'Developed a complete data flow from backend to frontend, including data conversion and API client integration',
        'Created numerous UI components and animations',
        'Developed a background service for transmitting data to cloud storage in chunks',
        'Engineered the logic for live streaming from mobile apps to online platforms, including application, backend, and web aspects',
      ],
      order: ExperienceSectionOrder.middle,
    );

    final agroStab = ExperienceVM(
      title: 'Full-stack Developer',
      organization: 'AgroSTAB',
      location: 'St. Petersburg, Russia',
      image: Assets.images.agroStabImage.svg(),
      duration: 'February 2022 – July 2022',
      subtitle: 'Development of an administrative control panel for smart greenhouses',
      skills: [
        "Mqtt",
        "Cron",
        "PostgreSQL",
        "Linux",
        "English",
        "Git",
        "ReactJS",
        "GitLab",
      ],
      achievements: [
        'Created and refactored the application interface using the React.js framework',
        'Handled data with react-redux',
        'Designed the structure of components, their placement, and connections',
        'Added interactive elements to enhance usability',
        'Edited the structure of a backend written in Nest.js and added data processing logic',
        'Designed database architecture (Postgres) and implemented updates',
        'Developed algorithms for scheduling and updating data in the database',
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
            title: 'EXPERIENCE',
            subtitle: 'The boring part',
            alignment: AppTitleAlignment.left,
          ),
          SizedBox(height: AppResponsiveSizes.x3Large(context)),
          ExperienceSection(vm: greenflux),
          ExperienceSection(vm: friflex),
          ExperienceSection(vm: agroStab),
        ],
      ),
    );
  }
}
