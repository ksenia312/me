import 'package:flutter/widgets.dart';
import 'package:me/domain/download_file/download_file_repository.dart';
import 'package:me/domain/pet_project/model/pet_project_data.dart';
import 'package:me/domain/pet_project/pet_project_repository.dart';
import 'package:me/features/pet_project/notifier/pet_project_vm.dart';

class PetProjectListNotifier extends ChangeNotifier {
  List<PetProjectLoadedCard> vms = [];

  Future<void> init() async {
    try {
      final dataList = await PetProjectRepository.instance.fetchList();

      for (final data in dataList) {
        vms.add(PetProjectLoadedCard(data: data, imageUrl: await getImageUrl(data)));
        notifyListeners();
      }
    } catch (_) {}
  }

  Future<String> getImageUrl(PetProjectData data) async {
    final url = await DownloadFileRepository.instance.getDownloadUrl(data.imageStoragePath);
    return url;
  }
}
