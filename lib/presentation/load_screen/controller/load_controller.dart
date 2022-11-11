import '/core/app_export.dart';
import 'package:ian_kwe_mboya_s_application4/presentation/load_screen/models/load_model.dart';

class LoadController extends GetxController {
  Rx<LoadModel> loadModelObj = LoadModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 10000), () {
      Get.toNamed(AppRoutes.loginAuthScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
