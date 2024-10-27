import 'package:flutter/material.dart';
import 'package:me/generated/assets.gen.dart';

class MainImage extends StatelessWidget {
  const MainImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 750,
      child: Image.asset(Assets.images.me.path, fit: BoxFit.scaleDown),
    );
  }
}
