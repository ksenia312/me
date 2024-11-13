import 'package:flutter/material.dart';

class PetProjectData {
  const PetProjectData({
    required this.id,
    required this.order,
    required this.titles,
    required this.subtitles,
    required this.imageStoragePath,
    required this.imageLargeStoragePath,
    required this.accentColor,
    this.androidDemoAspectRatio,
    this.iosDemoAspectRatio,
    this.githubLink,
    this.googlePlayLink,
    this.websiteLink,
    this.androidStoragePath,
    this.iosStoragePath,
  });

  factory PetProjectData.fromJson(Map<String, dynamic> json) {
    final color = json['color'] as String;

    return PetProjectData(
      id: json['id'] as String,
      order: json['order'] as int? ?? 10000,
      titles: Map<String, String>.from(json['titles']),
      subtitles: Map<String, String>.from(json['subtitles']),
      imageStoragePath: json['imageSmall'] as String,
      imageLargeStoragePath: json['imageLarge'] as String,
      androidStoragePath: json['androidDemo'] as String?,
      androidDemoAspectRatio: json['androidDemoAspectRatio'] as double?,
      iosStoragePath: json['iosDemo'] as String?,
      iosDemoAspectRatio: json['iosDemoAspectRatio'] as double?,
      accentColor: Color(int.parse(color.replaceAll('#', '0xFF'))),
      githubLink: json['github'] as String?,
      googlePlayLink: json['googlePlay'] as String?,
      websiteLink: json['website'] as String?,
    );
  }

  final String id;
  final int order;
  final Map<String, String> titles;
  final Map<String, String> subtitles;
  final String imageStoragePath;
  final String imageLargeStoragePath;
  final Color accentColor;
  final String? androidStoragePath;
  final double? androidDemoAspectRatio;
  final String? iosStoragePath;
  final double? iosDemoAspectRatio;
  final String? githubLink;
  final String? googlePlayLink;
  final String? websiteLink;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PetProjectData &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          titles == other.titles &&
          subtitles == other.subtitles &&
          imageStoragePath == other.imageStoragePath &&
          imageLargeStoragePath == other.imageLargeStoragePath &&
          accentColor == other.accentColor &&
          androidStoragePath == other.androidStoragePath &&
          iosStoragePath == other.iosStoragePath &&
          githubLink == other.githubLink &&
          googlePlayLink == other.googlePlayLink &&
          websiteLink == other.websiteLink;

  @override
  int get hashCode =>
      id.hashCode ^
      titles.hashCode ^
      subtitles.hashCode ^
      imageStoragePath.hashCode ^
      imageLargeStoragePath.hashCode ^
      accentColor.hashCode ^
      androidStoragePath.hashCode ^
      iosStoragePath.hashCode ^
      githubLink.hashCode ^
      googlePlayLink.hashCode ^
      websiteLink.hashCode;

  @override
  String toString() {
    return 'PetProjectData{id: $id, order: $order, titles: $titles, subtitles: $subtitles, imageSmallStoragePath: $imageStoragePath, imageLargeStoragePath: $imageLargeStoragePath, accentColor: $accentColor, androidDemoStoragePath: $androidStoragePath, iosDemoStoragePath: $iosStoragePath, githubLink: $githubLink, googlePlayLink: $googlePlayLink, websiteLink: $websiteLink}';
  }
}
