import '../schedule_page/widgets/schedule_item_widget.dart';
import 'controller/schedule_controller.dart';
import 'models/schedule_item_model.dart';
import 'models/schedule_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcare/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SchedulePage extends StatelessWidget {
  ScheduleController controller =
      Get.put(ScheduleController(ScheduleModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 20,
                  top: 32,
                  right: 20,
                ),
                child: Obx(
                  () => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getVerticalSize(
                          16,
                        ),
                      );
                    },
                    itemCount: controller
                        .scheduleModelObj.value.scheduleItemList.length,
                    itemBuilder: (context, index) {
                      ScheduleItemModel model = controller
                          .scheduleModelObj.value.scheduleItemList[index];
                      return ScheduleItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
