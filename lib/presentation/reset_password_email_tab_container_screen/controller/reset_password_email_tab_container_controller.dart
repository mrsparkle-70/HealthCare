import 'package:healthcare/core/app_export.dart';
import 'package:healthcare/presentation/reset_password_email_tab_container_screen/models/reset_password_email_tab_container_model.dart';
import 'package:flutter/material.dart';

class ResetPasswordEmailTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<ResetPasswordEmailTabContainerModel>
      resetPasswordEmailTabContainerModelObj =
      ResetPasswordEmailTabContainerModel().obs;

  late TabController tabController =
      Get.put(TabController(vsync: this, length: 2));

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
