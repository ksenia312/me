part of '../experience_section.dart';

class _ExperienceDesktopLayout extends StatefulWidget {
  const _ExperienceDesktopLayout({required this.parameters, required this.accentColor});

  final ExperienceVM parameters;
  final Color accentColor;

  @override
  State<_ExperienceDesktopLayout> createState() => _ExperienceDesktopLayoutState();
}

class _ExperienceDesktopLayoutState extends State<_ExperienceDesktopLayout> {
  static const _strokeWidth = 4.0;

  final _key = GlobalKey();
  final _mainInfoKey = GlobalKey();
  final _textKey = GlobalKey();

  Size _size = Size(0, 0);
  Size _mainInfoSize = Size(0, 0);
  Size _textSize = Size(0, 0);

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => _updateSize());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final sectionsBetweenIndent = AppResponsiveSizes.x3Large(context);
    final imageSize = Responsive.get(context, def: () => 130.0, m: () => 100.0, s: () => 80.0);
    final topIndent = _mainInfoSize.height + sectionsBetweenIndent / 2;
    final textStyle = context.textTheme.headlineSmall;

    return ResponsiveListener(
      onScreenSizeChange: _updateSize,
      child: Row(
        children: [
          Flexible(
            child: SizedBox(
              height: _size.height,
              child: Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(top: max(topIndent - _textSize.height / 2, 0)),
                child: Text(widget.parameters.duration, key: _textKey, style: textStyle),
              ),
            ),
          ),
          SizedBox(width: AppResponsiveSizes.large(context)),
          SizedBox(
            height: _size.height,
            width: imageSize,
            child: LayoutBuilder(builder: (context, constraints) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(
                    child: _Arrow(
                      color: widget.accentColor,
                      order: widget.parameters.order,
                      width: _strokeWidth,
                    ),
                  ),
                  Positioned(
                    top: topIndent - imageSize / 2,
                    child: _ImageWidget(
                      image: widget.parameters.image,
                      borderColor: widget.accentColor,
                      size: constraints.maxWidth,
                      borderWidth: _strokeWidth,
                    ),
                  )
                ],
              );
            }),
          ),
          SizedBox(width: AppResponsiveSizes.x4Large(context)),
          Flexible(
            flex: 3,
            child: Column(
              key: _key,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  key: _mainInfoKey,
                  padding: EdgeInsets.only(top: AppResponsiveSizes.x8large(context)),
                  child: _MainInfoWidget(
                    location: widget.parameters.location,
                    organization: widget.parameters.organization,
                    title: widget.parameters.title,
                  ),
                ),
                SizedBox(height: sectionsBetweenIndent),
                _DescriptionWidget(
                  subtitle: widget.parameters.subtitle,
                  skills: widget.parameters.skills,
                  achievements: widget.parameters.achievements,
                ),
                SizedBox(height: AppResponsiveSizes.x8large(context)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _updateSize() {
    try {
      Future.delayed(Duration.zero, () {
        setState(() {
          _size = _key.currentContext?.size ?? Size(0, 0);
          _mainInfoSize = _mainInfoKey.currentContext?.size ?? Size(0, 0);
          _textSize = _textKey.currentContext?.size ?? Size(0, 0);
        });
      });
    } catch (_) {}
  }
}
