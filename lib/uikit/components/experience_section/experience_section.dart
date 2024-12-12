import 'dart:math';

import 'package:flutter/material.dart';
import 'package:me/features/landing/notifier/experience_vm.dart';
import 'package:me/generated/assets.gen.dart';
import 'package:me/uikit/custom_paint/arrow_painter.dart';
import 'package:me/uikit/responsive/responsive_listener.dart';
import 'package:me/uikit/responsive/responsive_sizes.dart';
import 'package:me/uikit/responsive/responsive_utils.dart';
import 'package:me/uikit/theme/app_colors.dart';
import 'package:me/uikit/theme/context_extensions.dart';

part 'description_widget.dart';

part 'image_widget.dart';

part 'main_info_widget.dart';

part 'experience_section_tools.dart';

part 'layout/experience_mobile_layout.dart';

part 'layout/experience_desktop_layout.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key, required this.vm});

  final ExperienceVM vm;

  @override
  Widget build(BuildContext context) {
    return Responsive.get(
      context,
      def: () => _ExperienceDesktopLayout(parameters: vm, accentColor: AppColors.blueShaded),
      m: () => _ExperienceMobileLayout(parameters: vm, accentColor: AppColors.blueShaded),
    );
  }
}
