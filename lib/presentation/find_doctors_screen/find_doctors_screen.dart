import '../find_doctors_screen/widgets/doctors_item_widget.dart';
import '../find_doctors_screen/widgets/listuser_item_widget.dart';
import 'controller/find_doctors_controller.dart';
import 'models/doctors_item_model.dart';
import 'models/listuser_item_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcare/core/app_export.dart';
import 'package:healthcare/widgets/app_bar/appbar_image.dart';
import 'package:healthcare/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:healthcare/widgets/app_bar/custom_app_bar.dart';
import 'package:healthcare/widgets/custom_search_view.dart';

class FindDoctorsScreen extends GetWidget<FindDoctorsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(40),
                leadingWidth: 64,
                leading: AppbarImage(
                    height: getSize(40),
                    width: getSize(40),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24),
                    onTap: onTapArrowleft3),
                centerTitle: true,
                title: AppbarSubtitle2(text: "lbl_find_doctors".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 23, top: 24, right: 23, bottom: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomSearchView(
                          focusNode: FocusNode(),
                          controller: controller.searchController,
                          hintText: "lbl_find_a_doctor".tr,
                          margin: getMargin(left: 1),
                          padding: SearchViewPadding.PaddingT15,
                          prefix: Container(
                              margin: getMargin(
                                  left: 17, top: 14, right: 12, bottom: 14),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgSearch)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(46)),
                          suffix: Padding(
                              padding:
                                  EdgeInsets.only(right: getHorizontalSize(15)),
                              child: IconButton(
                                  onPressed: () {
                                    controller.searchController.clear();
                                  },
                                  icon: Icon(Icons.clear,
                                      color: Colors.grey.shade600)))),
                      Padding(
                          padding: getPadding(left: 1, top: 27),
                          child: Text("lbl_category".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold18.copyWith(
                                  letterSpacing: getHorizontalSize(0.3)))),
                      Padding(
                          padding: getPadding(left: 1, top: 10, right: 2),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(15));
                              },
                              itemCount: controller.findDoctorsModelObj.value
                                  .listuserItemList.length,
                              itemBuilder: (context, index) {
                                ListuserItemModel model = controller
                                    .findDoctorsModelObj
                                    .value
                                    .listuserItemList[index];
                                return ListuserItemWidget(model);
                              }))),
                      Padding(
                          padding: getPadding(left: 1, top: 23),
                          child: Text("msg_recommended_doc".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewayRomanSemiBold18Gray900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.3)))),
                      Container(
                          margin: getMargin(left: 1, top: 13, right: 1),
                          padding: getPadding(top: 16, bottom: 16),
                          decoration: AppDecoration.outlineBluegray50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse8888x88,
                                    height: getSize(88),
                                    width: getSize(88),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(44)),
                                    margin: getMargin(bottom: 12)),
                                Padding(
                                    padding: getPadding(top: 2, bottom: 5),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("msg_dr_marcus_hori".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanSemiBold16),
                                          Padding(
                                              padding: getPadding(top: 8),
                                              child: Text(
                                                  "lbl_chardiologist".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRalewayRomanRegular14)),
                                          Padding(
                                              padding: getPadding(top: 5),
                                              child: SizedBox(
                                                  width: getHorizontalSize(167),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .blueGray50))),
                                          Padding(
                                              padding: getPadding(top: 23),
                                              child: Row(children: [
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgStar,
                                                    height: getSize(16),
                                                    width: getSize(16),
                                                    margin:
                                                        getMargin(bottom: 2)),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 4,
                                                        top: 1,
                                                        bottom: 1),
                                                    child: Text("lbl_4_7".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRalewayRomanMedium12)),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgLocation16x16,
                                                    height: getSize(16),
                                                    width: getSize(16),
                                                    margin: getMargin(
                                                        left: 24, bottom: 2)),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 4, top: 1),
                                                    child: Text(
                                                        "lbl_800m_away".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRalewayRomanMedium14Bluegray80001))
                                              ]))
                                        ]))
                              ])),
                      Padding(
                          padding: getPadding(left: 1, top: 42),
                          child: Text("msg_your_recent_doc".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtRalewayRomanSemiBold18Gray900)),
                      Container(
                          height: getVerticalSize(102),
                          child: Obx(() => ListView.separated(
                              padding: getPadding(left: 1, top: 13),
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(24));
                              },
                              itemCount: controller.findDoctorsModelObj.value
                                  .doctorsItemList.length,
                              itemBuilder: (context, index) {
                                DoctorsItemModel model = controller
                                    .findDoctorsModelObj
                                    .value
                                    .doctorsItemList[index];
                                return DoctorsItemWidget(model);
                              })))
                    ]))));
  }

  onTapArrowleft3() {
    Get.back();
  }
}
