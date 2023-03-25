import 'package:healthcare/core/app_export.dart';
import 'package:healthcare/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';

class SignUpController extends GetxController {
  TextEditingController enternameController = TextEditingController();

  TextEditingController enteremailController = TextEditingController();

  TextEditingController enterpasswordController = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  Rx<bool> isShowPassword = false.obs;

  RxBool checkbox = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    enternameController.dispose();
    enteremailController.dispose();
    enterpasswordController.dispose();
  }
}
