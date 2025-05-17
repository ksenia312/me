part of 'experience_section.dart';

class _ImageWidget extends StatelessWidget {
  const _ImageWidget({
    required this.image,
    required this.borderColor,
    required this.size,
    required this.borderWidth,
  });

  final Widget image;
  final double size;
  final Color borderColor;
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10000),
          border: Border.all(color: borderColor, width: borderWidth, strokeAlign: BorderSide.strokeAlignOutside),
          color: context.customColorScheme.gradientExtraLightColor,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10000),
          child: FittedBox(fit: BoxFit.cover, child: image),
        ),
      ),
    );
  }
}
