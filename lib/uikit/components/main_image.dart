import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:me/generated/assets.gen.dart';
import 'package:me/uikit/elements/app_images_cache.dart';
import 'package:me/uikit/responsive/responsive_utils.dart';

class MainImage extends StatefulWidget {
  const MainImage({super.key});

  static Uint8List? _kMainImage;

  static Future<void> load() async {
    _kMainImage = await AppImagesCache.load(Assets.images.me.path);
  }

  @override
  State<MainImage> createState() => _MainImageState();
}

class _MainImageState extends State<MainImage> with AutomaticKeepAliveClientMixin {
  bool _isLoaded = false;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(milliseconds: 100), () {
        setState(() => _isLoaded = true);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final isLoading = MainImage._kMainImage == null || !_isLoaded;
    final width = Responsive.get(
      context,
      def: () => 750.0,
      s: () => MediaQuery.of(context).size.width,
    );
    final duration = const Duration(milliseconds: 300);
    final curve = Curves.easeInOut;
    return SizedBox(
      width: width,
      child: AspectRatio(
        aspectRatio: 1194 / 828,
        child: AnimatedSlide(
          curve: curve,
          offset: isLoading ? const Offset(0, 1) : Offset.zero,
          duration: duration,
          child: AnimatedOpacity(
            curve: curve,
            duration: duration,
            opacity: isLoading ? 0 : 1,
            child: isLoading
                ? SizedBox.shrink()
                : Image.memory(
                    MainImage._kMainImage!,
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.bottomCenter,
                    filterQuality: FilterQuality.high,
                  ),
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
