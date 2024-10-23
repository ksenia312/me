/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Overpass-Bold.ttf
  String get overpassBold => 'assets/fonts/Overpass-Bold.ttf';

  /// File path: assets/fonts/Overpass-Regular.ttf
  String get overpassRegular => 'assets/fonts/Overpass-Regular.ttf';

  /// List of all assets
  List<String> get values => [overpassBold, overpassRegular];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ic_email.svg
  SvgGenImage get icEmail => const SvgGenImage('assets/icons/ic_email.svg');

  /// File path: assets/icons/ic_github.svg
  SvgGenImage get icGithub => const SvgGenImage('assets/icons/ic_github.svg');

  /// File path: assets/icons/ic_human_brain.svg
  SvgGenImage get icHumanBrain => const SvgGenImage('assets/icons/ic_human_brain.svg');

  /// File path: assets/icons/ic_linked_in.svg
  SvgGenImage get icLinkedIn => const SvgGenImage('assets/icons/ic_linked_in.svg');

  /// File path: assets/icons/ic_telegram.svg
  SvgGenImage get icTelegram => const SvgGenImage('assets/icons/ic_telegram.svg');

  /// List of all assets
  List<SvgGenImage> get values => [icEmail, icGithub, icHumanBrain, icLinkedIn, icTelegram];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/me.png
  AssetGenImage get me => const AssetGenImage('assets/images/me.png');

  /// List of all assets
  List<AssetGenImage> get values => [me];
}

class $AssetsTranslationsGen {
  const $AssetsTranslationsGen();

  /// File path: assets/translations/de.json
  String get de => 'assets/translations/de.json';

  /// File path: assets/translations/en.json
  String get en => 'assets/translations/en.json';

  /// File path: assets/translations/es.json
  String get es => 'assets/translations/es.json';

  /// File path: assets/translations/fr.json
  String get fr => 'assets/translations/fr.json';

  /// File path: assets/translations/hi.json
  String get hi => 'assets/translations/hi.json';

  /// File path: assets/translations/it.json
  String get it => 'assets/translations/it.json';

  /// File path: assets/translations/ja.json
  String get ja => 'assets/translations/ja.json';

  /// File path: assets/translations/ko.json
  String get ko => 'assets/translations/ko.json';

  /// File path: assets/translations/nl.json
  String get nl => 'assets/translations/nl.json';

  /// File path: assets/translations/pt.json
  String get pt => 'assets/translations/pt.json';

  /// File path: assets/translations/ru.json
  String get ru => 'assets/translations/ru.json';

  /// File path: assets/translations/tr.json
  String get tr => 'assets/translations/tr.json';

  /// File path: assets/translations/zh.json
  String get zh => 'assets/translations/zh.json';

  /// List of all assets
  List<String> get values => [de, en, es, fr, hi, it, ja, ko, nl, pt, ru, tr, zh];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsTranslationsGen translations = $AssetsTranslationsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
