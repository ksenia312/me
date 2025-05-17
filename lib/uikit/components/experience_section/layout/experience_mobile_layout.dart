part of '../experience_section.dart';

class _ExperienceMobileLayout extends StatelessWidget {
  const _ExperienceMobileLayout({required this.parameters, required this.accentColor});

  static const _imageSize = 70.0;
  static const _arrowIndent = 0.0;
  static const _strokeWidth = 2.0;

  final ExperienceVM parameters;
  final Color accentColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            left: _imageSize / 2 - (_Arrow.horizontalArea / 2) + _arrowIndent,
            top: 0,
            bottom: 0,
            child: _Arrow(
              color: accentColor,
              order: parameters.order,
              width: _strokeWidth,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: AppResponsiveSizes.x8large(context)),
              Padding(
                padding: EdgeInsets.only(left: _arrowIndent),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _ImageWidget(
                      image: parameters.image,
                      borderColor: accentColor,
                      size: _imageSize,
                      borderWidth: _strokeWidth,
                    ),
                    SizedBox(width: 16),
                    Flexible(
                      child: Text(
                        parameters.duration,
                        style: context.textTheme.headlineSmall,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              _MainInfoWidget(
                location: parameters.location,
                organization: parameters.organization,
                title: parameters.title,
                isMinimal: false,
              ),
              SizedBox(height: 20),
              _DescriptionWidget(
                subtitle: parameters.subtitle,
                skills: parameters.skills,
                achievements: parameters.achievements,
              ),
              SizedBox(height: AppResponsiveSizes.x8large(context)),
            ],
          )
        ],
      ),
    );
  }
}
