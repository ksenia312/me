part of 'experience_section.dart';

class _MainInfoWidget extends StatelessWidget {
  const _MainInfoWidget({required this.title, required this.organization, required this.location});

  final String title;
  final String organization;
  final String location;

  @override
  Widget build(BuildContext context) {
    return _Decorated(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: context.textTheme.titleLarge),
          SizedBox(height: AppResponsiveSizes.x3Large(context)),
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Assets.icons.organization.svg(width: AppResponsiveSizes.large(context)),
              SizedBox(width: AppResponsiveSizes.medium(context)),
              Flexible(child: Text(organization, style: context.textTheme.titleMedium)),
            ],
          ),
          SizedBox(height: AppResponsiveSizes.medium(context)),
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Assets.icons.location.svg(width: AppResponsiveSizes.large(context)),
              SizedBox(width: AppResponsiveSizes.medium(context)),
              Flexible(
                child: Text(
                  location,
                  style: context.textTheme.titleMedium?.copyWith(color: AppColors.lightGrey),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
