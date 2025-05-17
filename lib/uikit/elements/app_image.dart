import 'package:flutter/material.dart';

class AppImage extends StatefulWidget {
  const AppImage({
    super.key,
    required this.imageUrl,
    this.fit,
    this.height,
    this.width,
    this.filterQuality = FilterQuality.low,
    this.errorWidget,
  });

  final String imageUrl;
  final BoxFit? fit;
  final double? height;
  final double? width;
  final FilterQuality filterQuality;
  final Widget Function(BuildContext context, String url, Object? error)? errorWidget;

  @override
  State<AppImage> createState() => _AppImageState();
}

class _AppImageState extends State<AppImage> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Image.network(
      widget.imageUrl,
      fit: widget.fit,
      height: widget.height,
      width: widget.width,
      filterQuality: widget.filterQuality,
      errorBuilder: (context, error, stackTrace) =>
          widget.errorWidget?.call(context, widget.imageUrl, error) ?? SizedBox.shrink(),
    );
  }
}
