part of 'experience_section.dart';

class _Arrow extends StatelessWidget {
  const _Arrow({required this.color, required this.order, required this.width});

  static const horizontalArea = 15.0;

  final Color color;
  final ExperienceSectionOrder order;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: horizontalArea,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (order == ExperienceSectionOrder.first)
            CustomPaint(
              painter: ArrowPainter(
                arrowSize: horizontalArea,
                start: Offset(0, 30),
                end: Offset(0, 0),
                color: color,
                strokeWidth: width,
              ),
            ),
          Expanded(
            child: Container(
              color: color,
              width: width,
            ),
          ),
          if (order == ExperienceSectionOrder.last)
            Transform.translate(
              offset: Offset(0, -7),
              child: Container(
                height: horizontalArea,
                width: horizontalArea,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color,
                ),
              ),
            )
        ],
      ),
    );
  }
}

class _Decorated extends StatelessWidget {
  const _Decorated({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.blueMore3,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: AppResponsiveSizes.x4Large(context),
        vertical: AppResponsiveSizes.x3Large(context),
      ),
      child: child,
    );
  }
}

class _Skill extends StatelessWidget {
  const _Skill({required this.skill});

  final String skill;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.dimBlueTransparent,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      child: Text(skill, style: context.textTheme.bodyMedium),
    );
  }
}
