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

class _MainImageState extends State<MainImage> {
  bool _isLoaded = false;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() => _isLoaded = true);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = MainImage._kMainImage == null || !_isLoaded;
    final width = Responsive.get(
      context,
      def: () => MediaQuery.of(context).size.width / 2.3,
      s: () => MediaQuery.of(context).size.width,
    );
    final height = width * 0.7;
    final duration = const Duration(milliseconds: 300);
    final curve = Curves.easeInOut;
    return SizedBox(
      width: width,
      height: height,
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
                  fit: BoxFit.fitHeight,
                  width: width,
                  height: height,
                  alignment: Alignment.topCenter,
                ),
        ),
      ),
    );
  }
}
