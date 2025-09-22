part of 'experience_section.dart';

class _DescriptionWidget extends StatelessWidget {
  const _DescriptionWidget({required this.subtitle, required this.skills, required this.achievements});

  final String subtitle;
  final List<String> skills;
  final List<String> achievements;

  @override
  Widget build(BuildContext context) {
    return _Decorated(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(subtitle, style: context.textTheme.titleSmall),
          SizedBox(height: AppResponsiveSizes.x3Large(context)),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            alignment: WrapAlignment.start,
            runAlignment: WrapAlignment.start,
            children: [...skills.map((e) => _Skill(skill: e))],
          ),
          if (achievements.isNotEmpty) SizedBox(height: AppResponsiveSizes.x3Large(context)),
          ...achievements
              .map(
                (e) => Row(
                  children: [
                    Container(
                      width: 4,
                      height: 4,
                      decoration: BoxDecoration(
                        color: context.colorScheme.onSurface,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: 12),
                    Flexible(child: Text(e, style: context.textTheme.bodyMedium?.copyWith(height: 1.4))),
                  ],
                ),
              )
              .expand((e) => [e, SizedBox(height: 8)]),
        ],
      ),
    );
  }
}
