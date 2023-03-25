import 'package:healthcare/core/app_export.dart';
import 'package:healthcare/presentation/schedule_page/models/schedule_model.dart';

class ScheduleController extends GetxController {
  ScheduleController(this.scheduleModelObj);

  Rx<ScheduleModel> scheduleModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
