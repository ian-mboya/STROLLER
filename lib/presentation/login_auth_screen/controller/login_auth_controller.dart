import '/core/app_export.dart';
import 'package:ian_kwe_mboya_s_application4/presentation/login_auth_screen/models/login_auth_model.dart';
import 'package:flutter/material.dart';

class LoginAuthController extends GetxController {
  TextEditingController textboxController = TextEditingController();

  TextEditingController textboxOneController = TextEditingController();

  Rx<LoginAuthModel> loginAuthModelObj = LoginAuthModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    textboxController.dispose();
    textboxOneController.dispose();
  }
}
