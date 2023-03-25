import 'package:healthcare/core/app_export.dart';
import 'package:healthcare/presentation/reset_password_verify_code_screen/models/reset_password_verify_code_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

class ResetPasswordVerifyCodeController extends GetxController
    with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<ResetPasswordVerifyCodeModel> resetPasswordVerifyCodeModelObj =
      ResetPasswordVerifyCodeModel().obs;

  @override
  void codeUpdated() {
    otpController.value.text = code!;
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
