import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:me/generated/assets.gen.dart';
import 'package:me/uikit/app_images_cache.dart';

class MainImage extends StatelessWidget {
  const MainImage({super.key});

  static Uint8List? _kMainImage;

  static Future<void> load() async {
    _kMainImage = await AppImagesCache.load(Assets.images.me.path);
  }

  @override
  Widget build(BuildContext context) {
    print(_kMainImage?.length);
    return SizedBox.fromSize(
      size: Size(750, 392),
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 300),
        opacity: _kMainImage == null ? 0 : 1,
        child: _kMainImage == null
            ? SizedBox.shrink()
            : Image.memory(
                _kMainImage!,
                fit: BoxFit.scaleDown,
              ),
      ),
    );
  }
}
