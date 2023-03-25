import '../top_doctor_screen/widgets/topdoctor_item_widget.dart';
import 'controller/top_doctor_controller.dart';
import 'models/topdoctor_item_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcare/core/app_export.dart';
import 'package:healthcare/widgets/app_bar/appbar_image.dart';
import 'package:healthcare/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:healthcare/widgets/app_bar/custom_app_bar.dart';

class TopDoctorScreen extends GetWidget<TopDoctorController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(40),
                leadingWidth: 64,
                leading: AppbarImage(
                    height: getSize(40),
                    width: getSize(40),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24),
                    onTap: onTapArrowleft2),
                centerTitle: true,
                title: AppbarSubtitle3(text: "lbl_top_doctor".tr),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(16),
                      width: getHorizontalSize(4),
                      svgPath: ImageConstant.imgComponent1,
                      margin:
                          getMargin(left: 24, top: 13, right: 24, bottom: 11))
                ]),
            body: Padding(
                padding: getPadding(left: 24, top: 24, right: 24),
                child: Obx(() => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(16));
                    },
                    itemCount: controller
                        .topDoctorModelObj.value.topdoctorItemList.length,
                    itemBuilder: (context, index) {
                      TopdoctorItemModel model = controller
                          .topDoctorModelObj.value.topdoctorItemList[index];
                      return TopdoctorItemWidget(model);
                    })))));
  }

  onTapArrowleft2() {
    Get.back();
  }
}
