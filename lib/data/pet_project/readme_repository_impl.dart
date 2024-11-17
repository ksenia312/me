import 'package:me/domain/pet_project/readme_repository.dart';
import 'package:http/http.dart' as http;

class ReadmeRepositoryImpl implements ReadmeRepository {
  @override
  Future<String> fetch(String url) async {
    final response = await http.get(Uri.parse(_generateRawGitHubLink(url)));
    return response.body;
  }

  String _generateRawGitHubLink(String url) {
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
