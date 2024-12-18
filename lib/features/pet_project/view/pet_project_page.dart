import 'dart:math';

import 'package:me/uikit/elements/app_progress.dart';
import 'package:me/uikit/localization/localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:me/features/pet_project/notifier/pet_project_notifier.dart';
import 'package:me/features/pet_project/notifier/pet_project_vm.dart';
import 'package:me/uikit/components/language_button.dart';
import 'package:me/uikit/components/up_button.dart';
import 'package:me/uikit/elements/app_back_button.dart';
import 'package:me/uikit/elements/custom_app_bar.dart';

import 'package:me/uikit/responsive/responsive_sizes.dart';
import 'package:me/uikit/theme/context_extensions.dart';

import 'widgets/pet_project_app_bar.dart';
import 'widgets/pet_project_demo.dart';
import 'widgets/pet_project_footer.dart';
import 'widgets/pet_project_readme.dart';
import 'widgets/pet_project_title.dart';

part 'pet_project_body.dart';

class PetProjectIDPage extends StatefulWidget {
  const PetProjectIDPage({super.key, required this.id});

  final String id;

  @override
  State<PetProjectIDPage> createState() => _PetProjectIDPageState();
}

class _PetProjectIDPageState extends State<PetProjectIDPage> {
  late final _notifier = PetProjectNotifier(id: widget.id)..addListener(() => setState(() {}));

  @override
  void initState() {
    _notifier.init();
    super.initState();
  }

  @override
  void dispose() {
    _notifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _PetProjectBody(notifier: _notifier);
  }
}

class PetProjectDataPage extends StatefulWidget {
  const PetProjectDataPage({super.key, required this.loaded});

  final PetProjectPageVM loaded;

  static Future<void> go(BuildContext context, {required PetProjectPageVM loaded}) async {
    context.push('/pet-project/${loaded.data.id}', extra: loaded);
  }

  @override
  State<PetProjectDataPage> createState() => _PetProjectDataPageState();
}

class _PetProjectDataPageState extends State<PetProjectDataPage> {
  late final _notifier = PetProjectNotifier(id: widget.loaded.data.id)..addListener(() => setState(() {}));

  @override
  void initState() {
    _notifier.initWithData(widget.loaded);
    super.initState();
  }

  @override
  void dispose() {
    _notifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _PetProjectBody(notifier: _notifier);
  }
}
