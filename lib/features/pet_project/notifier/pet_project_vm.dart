import 'package:me/domain/pet_project/model/pet_project_data.dart';

class PetProjectCardVM {
  const PetProjectCardVM({required this.data, required this.imageUrl});

  final PetProjectData data;
  final String imageUrl;

  PetProjectPageVM toPage() {
    return PetProjectPageVM(
      data: data,
      coverImageUrl: imageUrl,
    );
  }
}

class PetProjectPageVM {
  const PetProjectPageVM({
    required this.data,
    required this.coverImageUrl,
    this.androidDemoUrl,
    this.iosDemoUrl,
    this.markdown,
  });

  final PetProjectData data;
  final String coverImageUrl;
  final String? androidDemoUrl;
  final String? iosDemoUrl;
  final String? markdown;

  bool get hasDemo => data.androidStoragePath != null || data.iosStoragePath != null;

  bool get hasMarkdown => data.githubLink != null;

  PetProjectPageVM copyWith({
    PetProjectData? data,
    String? coverImageUrl,
    String? androidDemoUrl,
    String? iosDemoUrl,
    String? markdown,
  }) {
    return PetProjectPageVM(
      data: data ?? this.data,
      coverImageUrl: coverImageUrl ?? this.coverImageUrl,
      androidDemoUrl: androidDemoUrl ?? this.androidDemoUrl,
      iosDemoUrl: iosDemoUrl ?? this.iosDemoUrl,
      markdown: markdown ?? this.markdown,
    );
  }
}
