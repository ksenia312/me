import 'package:flutter/material.dart';
import 'package:me/domain/download_file/download_file_repository.dart';
import 'package:me/domain/pet_project/model/pet_project_data.dart';
import 'package:me/domain/pet_project/pet_project_repository.dart';
import 'package:http/http.dart' as http;

import 'pet_project_vm.dart';

class PetProjectNotifier extends ChangeNotifier {
  PetProjectNotifier({required this.id});

  final String id;

  bool isLoading = true;
  bool isMarkdownLoading = false;

  PetProjectLoadedPage? vm;

  Future<void> init() async {
    try {
      final data = await PetProjectRepository.instance.fetch(id);
      await _load(data: data);
    } catch (_) {}
  }

  Future<void> initWithData(PetProjectLoadedPage loaded) async {
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

      vm = PetProjectLoadedPage(
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
      final markdown = await _getMarkdown(githubLink);
      vm = vm?.copyWith(markdown: markdown);
    } catch (_) {}
    _setMarkdownLoading(false);
  }

  Future<String> _storageURL(String storagePath) async {
    final url = await DownloadFileRepository.instance.getDownloadUrl(storagePath);
    return url;
  }

  Future<String?> _getMarkdown(String githubLink) async {
    try {
      final response = await http.get(Uri.parse(generateRawGitHubLink(githubLink)));
      return response.body;
    } catch (_) {
      return null;
    }
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

  String generateRawGitHubLink(String url) {
    final regex = RegExp(r'^https://github\.com/([^/]+)/([^/]+)(/tree/[^/]+)?/?');
    final match = regex.firstMatch(url);

    if (match == null) {
      throw ArgumentError('Invalid GitHub URL');
    }

    final user = match.group(1);
    final repo = match.group(2);
    final branch = match.group(3)?.replaceFirst('/tree/', '') ?? 'main';

    return 'https://raw.githubusercontent.com/$user/$repo/$branch/README.md';
  }
}
