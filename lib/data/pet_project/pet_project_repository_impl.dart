import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:me/domain/pet_project/model/pet_project_data.dart';
import 'package:me/domain/pet_project/pet_project_repository.dart';

class PetProjectRepositoryImpl implements PetProjectRepository {
  final _firestore = FirebaseFirestore.instance;

  @override
  Future<PetProjectData> fetch(String id) async {
    try {
      final doc = await _firestore.collection('pet-projects').doc(id).get();
      return _parse(doc);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<PetProjectData>> fetchList() async {
    final doc = await _firestore.collection('pet-projects').get(GetOptions(source: Source.serverAndCache));
    final data = doc.docs.map(_parse).toList()..sort((a, b) => a.order.compareTo(b.order));

    return data;
  }

  PetProjectData _parse(DocumentSnapshot<Map<String, dynamic>> snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    final titles = jsonDecode(data['titleJson']) as Map<String, dynamic>;
    final subtitles = jsonDecode(data['subtitleJson']) as Map<String, dynamic>;
    return PetProjectData.fromJson({
      ...data,
      'id': snapshot.id,
      'titles': titles,
      'subtitles': subtitles,
    });
  }
}
