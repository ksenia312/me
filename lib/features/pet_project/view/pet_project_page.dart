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
import 'widgets/pet_project_readme.dart';
import 'widgets/pet_project_title.dart';

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
    return _PetProjectWrapper(notifier: _notifier);
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
    return _PetProjectWrapper(notifier: _notifier);
  }
}

class _PetProjectWrapper extends StatefulWidget {
  const _PetProjectWrapper({required this.notifier});

  final PetProjectNotifier notifier;

  @override
  State<_PetProjectWrapper> createState() => _PetProjectWrapperState();
}

class _PetProjectWrapperState extends State<_PetProjectWrapper> {
  late final ScrollController _controller = ScrollController()..addListener(() => setState(() {}));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final vm = widget.notifier.vm;

    return Scaffold(
      floatingActionButton: UpButton(controller: _controller),
      body: CustomScrollView(
        controller: _controller,
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 258 + AppResponsiveSizes.toolbarHeight(context),
            automaticallyImplyLeading: false,
            leadingWidth: double.infinity,
            toolbarHeight: AppResponsiveSizes.toolbarHeight(context),
            leading: CustomAppBar(leftTabs: [AppBackButton()], rightTabs: [LanguageButton()]),
            flexibleSpace: PetProjectAppBar(notifier: widget.notifier),
          ),
          Builder(
            builder: (context) {
              if (widget.notifier.isLoading) {
                return const SliverFillRemaining(
                  child: Center(child: CircularProgressIndicator()),
                );
              }
              final petProject = context.keys.petProjects;

              return SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: AppResponsiveSizes.landingMarginSmall(context),
                  ),
                  child: vm == null
                      ? Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: AppResponsiveSizes.landingMargin(context),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                petProject.error.title.toUpperCase(),
                                style: context.textTheme.displaySmall,
                              ),
                              SizedBox(height: AppResponsiveSizes.x3Large(context)),
                              Text(
                                petProject.error.subtitle(id: widget.notifier.id),
                                style: context.textTheme.bodyLarge,
                              ),
                            ],
                          ),
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            PetProjectTitle(vm: vm),
                            if (vm.hasMarkdown) ...[
                              SizedBox(height: AppResponsiveSizes.x8large(context)),
                              PetProjectReadme(
                                notifier: widget.notifier,
                                scrollController: _controller,
                              ),
                            ],
                            if (vm.hasDemo) ...[
                              SizedBox(height: AppResponsiveSizes.x8large(context)),
                              PetProjectDemo(vm: vm),
                            ],
                          ],
                        ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
