import 'package:flutter/material.dart';

enum ExperienceSectionOrder { first, middle, last }

class ExperienceVM {
  const ExperienceVM({
    required this.title,
    required this.organization,
    required this.location,
    required this.image,
    required this.duration,
    required this.subtitle,
    required this.skills,
    required this.achievements,
    required this.order,
  });

  final String title;
  final String organization;
  final String location;
  final Widget image;
  final String duration;
  final String subtitle;
  final List<String> skills;
  final List<String> achievements;
  final ExperienceSectionOrder order;
}
