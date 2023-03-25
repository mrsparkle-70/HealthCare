import 'package:healthcare/core/app_export.dart';
import 'package:healthcare/presentation/schedule_tab_container_page/models/schedule_tab_container_model.dart';
import 'package:flutter/material.dart';

class ScheduleTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  ScheduleTabContainerController(this.scheduleTabContainerModelObj);

  Rx<ScheduleTabContainerModel> scheduleTabContainerModelObj;

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
