import 'package:flutter/material.dart';
import 'package:me/domain/download_file/download_file_repository.dart';
import 'package:me/domain/pet_project/model/pet_project_data.dart';
import 'package:me/domain/pet_project/pet_project_repository.dart';
import 'package:me/domain/pet_project/readme_repository.dart';

import 'pet_project_vm.dart';

class PetProjectNotifier extends ChangeNotifier {
  PetProjectNotifier({required this.id});

  final String id;

  bool isLoading = true;
  bool isMarkdownLoading = false;

  PetProjectPageVM? vm;

  Future<void> init() async {
    PetProjectData data;
    try {
      data = await PetProjectRepository.instance.fetch(id);
    } catch (_) {
      _setLoading(false);
      return;
    }
    await _load(data: data);
  }

  Future<void> initWithData(PetProjectPageVM loaded) async {
    vm = loaded;
    _setLoading(false);
    await _load(
      data: loaded.data,
      coverImageUrl: loaded.coverImageUrl,
    );
  }

  Future<void> _load({
    required PetProjectData data,
    String? coverImageUrl,
    String? androidDemoUrl,
    String? iosDemoUrl,
  }) async {
    try {
      final androidStoragePath = data.androidStoragePath;
      final iosStoragePath = data.iosStoragePath;

      vm = PetProjectPageVM(
        data: data,
        coverImageUrl: coverImageUrl ?? await _storageURL(data.imageStoragePath),
        androidDemoUrl: androidDemoUrl ?? (androidStoragePath == null ? null : await _storageURL(androidStoragePath)),
        iosDemoUrl: iosDemoUrl ?? (iosStoragePath == null ? null : await _storageURL(iosStoragePath)),
      );
    } catch (_) {}
    _setLoading(false);

    if (data.githubLink != null) {
      await Future.delayed(const Duration(milliseconds: 1000));
      await _fetchMarkdown(data.githubLink!);
    }
  }

  Future<void> _fetchMarkdown(String githubLink) async {
    _setMarkdownLoading(true);
    try {
      final markdown = await ReadmeRepository.instance.fetch(githubLink);
      vm = vm?.copyWith(markdown: markdown);
    } catch (_) {}
    _setMarkdownLoading(false);
  }

  Future<String> _storageURL(String storagePath) async {
    final url = await DownloadFileRepository.instance.getDownloadUrl(storagePath);
    return url;
  }

  void _setLoading(bool value) {
    if (hasListeners) {
      isLoading = value;
      notifyListeners();
    }
  }

  void _setMarkdownLoading(bool value) {
    if (hasListeners) {
      isMarkdownLoading = value;
      notifyListeners();
    }
  }
}
