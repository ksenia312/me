import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:me/common/utils/responsive_utils.dart';
import 'package:me/features/landing/components/language_button.dart';
import 'package:me/generated/assets.gen.dart';
import 'package:me/localization/codegen_loader.g.dart';
import 'package:me/uikit/hovering_widget.dart';

import 'components/flutter_image.dart';
import 'components/greetings_text.dart';
import 'components/contact_button.dart';
import '../../uikit/project_section.dart';

part 'view/about_me_view.dart';

part 'view/contacts_view.dart';

part 'view/greetings_view.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [LanguageButton()],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            _GreetingsView(),
            _ContactsView(),
            _AboutMeView(),
          ],
        ),
      ),
    );
  }
}
