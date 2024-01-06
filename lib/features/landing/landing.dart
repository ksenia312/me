import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:me/common/utils/responsive_utils.dart';
import 'package:me/features/download_file/domain/download_cv_service.dart';
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

part 'view/download_cv_view.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  static const toolbarHeight = 80.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: toolbarHeight,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: LanguageButton(),
          )
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: toolbarHeight),
            _GreetingsView(),
            _ContactsView(),
            _AboutMeView(),
            _DownloadCVView(),
          ],
        ),
      ),
    );
  }
}
