import 'package:flutter/foundation.dart';
import 'package:me/app/firebase/data/firebase_repository.dart';
import 'package:url_launcher/url_launcher_string.dart';

class DownloadCvService extends ChangeNotifier {
  bool isLoading = false;

  Future<void> call() async {
    _setLoading(true);
    try {
      final url = await FirebaseRepository.instance.getDownloadUrl(
        'Kseniia_CV.pdf',
      );
      if (await canLaunchUrlString(url)) {
        await launchUrlString(
          url,
          mode: LaunchMode.externalApplication,
        );
      }
    } catch (e, s) {
      if (kDebugMode) {
        print('$e $s');
      }
    } finally {
      _setLoading(false);
    }
  }

  void _setLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }
}
