import 'package:healthcare/core/app_export.dart';
import 'package:healthcare/presentation/message_history_tab_container_page/models/message_history_tab_container_model.dart';
import 'package:flutter/material.dart';

class MessageHistoryTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  MessageHistoryTabContainerController(this.messageHistoryTabContainerModelObj);

  Rx<MessageHistoryTabContainerModel> messageHistoryTabContainerModelObj;

  late TabController group125Controller =
      Get.put(TabController(vsync: this, length: 3));

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
