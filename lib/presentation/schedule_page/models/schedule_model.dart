import 'package:get/get.dart';
import 'schedule_item_model.dart';

class ScheduleModel {
  RxList<ScheduleItemModel> scheduleItemList =
      RxList.generate(2, (index) => ScheduleItemModel());
}
