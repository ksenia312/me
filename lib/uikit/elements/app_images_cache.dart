import 'dart:async';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';

class AppImagesCache {
  AppImagesCache._();

  static late ImageStreamListener listener;

  static Future<Uint8List> load(String path) {
    final Completer<Uint8List> completer = Completer<Uint8List>();
    final ImageStream imageStream = AssetImage(path).resolve(ImageConfiguration.empty);

    listener = ImageStreamListener(
      (imageInfo, synchronousCall) {
        imageInfo.image.toByteData(format: ImageByteFormat.png).then((byteData) {
          imageStream.removeListener(listener);
          completer.complete(byteData?.buffer.asUint8List());
        });
      },
      onError: (exception, stackTrace) {
        imageStream.removeListener(listener);
        completer.completeError(exception);
      },
    );

    imageStream.addListener(listener);

    return completer.future;
  }
}
