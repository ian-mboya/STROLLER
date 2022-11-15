import 'package:ian_kwe_mboya_s_application4/core/app_export.dart';
import 'package:ian_kwe_mboya_s_application4/data/apiClient/api_client.dart';
import 'package:firebase_core/firebase_core.dart';
import '../../firebase_options.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() async {
    Get.put(PrefUtils());
    Get.put(ApiClient());
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(
        connectivity)); //TODO : run command "flutterfire configure" to generate firebase_options file
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
}
