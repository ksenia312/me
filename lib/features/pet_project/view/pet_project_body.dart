part of 'pet_project_page.dart';

class _PetProjectBody extends StatefulWidget {
  const _PetProjectBody({required this.notifier});

  final PetProjectNotifier notifier;

  @override
  State<_PetProjectBody> createState() => _PetProjectBodyState();
}

class _PetProjectBodyState extends State<_PetProjectBody> {
  late final ScrollController _controller = ScrollController()..addListener(() => setState(() {}));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final vm = widget.notifier.vm;
    final expandedHeight = 258 + AppResponsiveSizes.toolbarHeight(context);
    return Scaffold(
      floatingActionButton: UpButton(controller: _controller),
      body: CustomScrollView(
        controller: _controller,
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: expandedHeight,
            automaticallyImplyLeading: false,
            leadingWidth: double.infinity,
            toolbarHeight: AppResponsiveSizes.toolbarHeight(context),
            leading: CustomAppBar(
              leftTabs: [AppBackButton()],
              rightTabs: [
                LanguageButton(
                  onLanguageChanged: (_) => context.pop(),
                ),
              ],
            ),
            flexibleSpace: PetProjectAppBar(notifier: widget.notifier),
          ),
          Builder(
            builder: (context) {
              if (widget.notifier.isLoading) {
                return SliverFillRemaining(
                  child: Center(child: AppProgress.medium()),
                );
              }
              if (vm == null) {
                return SliverFillRemaining(
                  child: _ErrorView(id: widget.notifier.id),
                );
              }

              return SliverToBoxAdapter(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: max(MediaQuery.sizeOf(context).height - expandedHeight, 0)),
                  child: _SuccessView(vm: vm, notifier: widget.notifier, scrollController: _controller),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _SuccessView extends StatelessWidget {
  const _SuccessView({
    required this.vm,
    required this.notifier,
    this.scrollController,
  });

  final PetProjectNotifier notifier;
  final PetProjectPageVM vm;
  final ScrollController? scrollController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: AppResponsiveSizes.landingMarginSmall(context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PetProjectTitle(vm: vm),
              if (vm.hasMarkdown) ...[
                SizedBox(height: AppResponsiveSizes.x8large(context)),
                PetProjectReadme(
                  notifier: notifier,
                  scrollController: scrollController,
                ),
              ],
              if (vm.hasDemo) ...[
                SizedBox(height: AppResponsiveSizes.x8large(context)),
                PetProjectDemo(vm: vm),
              ],
            ],
          ),
        ),
        if (!notifier.isMarkdownLoading) PetProjectFooter(),
      ],
    );
  }
}

class _ErrorView extends StatelessWidget {
  const _ErrorView({required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    final petProject = context.keys.petProjects;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppResponsiveSizes.landingMargin(context),
            vertical: AppResponsiveSizes.landingMarginSmall(context),
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
                petProject.error.subtitle(id: id),
                style: context.textTheme.bodyLarge,
              ),
            ],
          ),
        ),
        Spacer(),
        PetProjectFooter(),
      ],
    );
  }
}
