import 'package:me/data/pet_project/pet_project_repository_impl.dart';
import 'package:me/domain/pet_project/model/pet_project_data.dart';

abstract class PetProjectRepository {
  static PetProjectRepository? _instance;

  static PetProjectRepository get instance {
    return _instance ??= PetProjectRepositoryImpl();
  }

  Future<PetProjectData> fetch(String id);

  Future<List<PetProjectData>> fetchList();
}
