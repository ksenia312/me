import 'package:flutter/widgets.dart';
import 'package:me/domain/download_file/download_file_repository.dart';
import 'package:me/domain/pet_project/model/pet_project_data.dart';
import 'package:me/domain/pet_project/pet_project_repository.dart';
import 'package:me/features/pet_project/notifier/pet_project_vm.dart';

class PetProjectListNotifier extends ChangeNotifier {
  PetProjectListNotifier._();

  static PetProjectListNotifier? _instance;

  static PetProjectListNotifier get instance => _instance ??= PetProjectListNotifier._();

  List<PetProjectCardVM> vms = [];

  // default value
  int count = 7;

  Future<void> init() async {
    if (vms.isNotEmpty) return;

    try {
      final result = <PetProjectCardVM>[];
      final dataList = await PetProjectRepository.instance.fetchList();
      count = dataList.length;

      for (final data in dataList) {
        result.add(PetProjectCardVM(data: data, imageUrl: await getImageUrl(data)));
      }
      vms.addAll(result);
      notifyListeners();
    } catch (_) {}
  }

  Future<String> getImageUrl(PetProjectData data) async {
    final url = await DownloadFileRepository.instance.getDownloadUrl(data.imageStoragePath);
    return url;
  }
}
