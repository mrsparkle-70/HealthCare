import '../home_page/widgets/home_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_item_model.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcare/core/app_export.dart';
import 'package:healthcare/widgets/app_bar/appbar_image.dart';
import 'package:healthcare/widgets/app_bar/custom_app_bar.dart';
import 'package:healthcare/widgets/custom_button.dart';
import 'package:healthcare/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA70001,
            appBar: CustomAppBar(
                height: getVerticalSize(84),
                title: Container(
                    width: getHorizontalSize(166),
                    margin: getMargin(left: 24),
                    child: Text("msg_find_your_desir".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRalewayRomanSemiBold22)),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgVolume,
                      margin:
                          getMargin(left: 24, top: 5, right: 24, bottom: 28))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, right: 24),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomSearchView(
                          focusNode: FocusNode(),
                          controller: controller.searchController,
                          hintText: "msg_search_doctor".tr,
                          margin: getMargin(top: 22),
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 11, right: 8, bottom: 11),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgSearch)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(40)),
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
                          padding: getPadding(top: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: EdgeInsets.all(0),
                                              color: ColorConstant.blue50,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder8),
                                              child: Container(
                                                  height: getVerticalSize(56),
                                                  width: getHorizontalSize(64),
                                                  padding: getPadding(
                                                      left: 16,
                                                      top: 12,
                                                      right: 16,
                                                      bottom: 12),
                                                  decoration: AppDecoration
                                                      .fillBlue50
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder8),
                                                  child: Stack(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgUser32x32,
                                                        height: getSize(32),
                                                        width: getSize(32),
                                                        alignment:
                                                            Alignment.center)
                                                  ]))),
                                          Padding(
                                              padding: getPadding(top: 9),
                                              child: Text("lbl_doctor".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRalewayRomanMedium14Bluegray300))
                                        ])),
                                GestureDetector(
                                    onTap: () {
                                      onTapPharmacy();
                                    },
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: EdgeInsets.all(0),
                                              color: ColorConstant.blue50,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder8),
                                              child: Container(
                                                  height: getVerticalSize(56),
                                                  width: getHorizontalSize(64),
                                                  padding: getPadding(
                                                      left: 16,
                                                      top: 12,
                                                      right: 16,
                                                      bottom: 12),
                                                  decoration: AppDecoration
                                                      .fillBlue50
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder8),
                                                  child: Stack(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgLink,
                                                        height: getSize(32),
                                                        width: getSize(32),
                                                        alignment:
                                                            Alignment.center)
                                                  ]))),
                                          Padding(
                                              padding: getPadding(top: 10),
                                              child: Text("lbl_pharmacy".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRalewayRomanMedium14Bluegray300))
                                        ])),
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: EdgeInsets.all(0),
                                          color: ColorConstant.blue50,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder8),
                                          child: Container(
                                              height: getVerticalSize(56),
                                              width: getHorizontalSize(64),
                                              padding: getPadding(
                                                  left: 16,
                                                  top: 12,
                                                  right: 16,
                                                  bottom: 12),
                                              decoration: AppDecoration
                                                  .fillBlue50
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder8),
                                              child: Stack(children: [
                                                CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgUpload,
                                                    height: getSize(32),
                                                    width: getSize(32),
                                                    alignment: Alignment.center)
                                              ]))),
                                      Padding(
                                          padding: getPadding(top: 10),
                                          child: Text("lbl_hospital".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanMedium14Bluegray300))
                                    ]),
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: EdgeInsets.all(0),
                                              color: ColorConstant.blue50,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder8),
                                              child: Container(
                                                  height: getVerticalSize(56),
                                                  width: getHorizontalSize(64),
                                                  padding: getPadding(
                                                      left: 16,
                                                      top: 12,
                                                      right: 16,
                                                      bottom: 12),
                                                  decoration: AppDecoration
                                                      .fillBlue50
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder8),
                                                  child: Stack(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgMusic,
                                                        height: getSize(32),
                                                        width: getSize(32),
                                                        alignment:
                                                            Alignment.center)
                                                  ]))),
                                          Padding(
                                              padding: getPadding(top: 9),
                                              child: Text("lbl_ambulance".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRalewayRomanMedium14Bluegray300))
                                        ]))
                              ])),
                      Container(
                          margin: getMargin(top: 15),
                          padding: getPadding(left: 3, right: 3),
                          decoration: AppDecoration.linear.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 11, top: 19, bottom: 21),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              width: getHorizontalSize(164),
                                              child: Text(
                                                  "msg_early_protectio".tr,
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRalewayRomanSemiBold18)),
                                          CustomButton(
                                              height: getVerticalSize(30),
                                              width: getHorizontalSize(98),
                                              text: "lbl_learn_more".tr,
                                              margin: getMargin(top: 13),
                                              variant:
                                                  ButtonVariant.FillWhiteA700,
                                              padding:
                                                  ButtonPadding.PaddingAll5,
                                              fontStyle: ButtonFontStyle
                                                  .RalewayRomanSemiBold12)
                                        ])),
                                Container(
                                    height: getVerticalSize(130),
                                    width: getHorizontalSize(113),
                                    margin: getMargin(top: 5),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                  height: getSize(113),
                                                  width: getSize(113),
                                                  margin: getMargin(bottom: 1),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  56)),
                                                      border: Border.all(
                                                          color: ColorConstant
                                                              .whiteA70087,
                                                          width:
                                                              getHorizontalSize(
                                                                  18))))),
                                          CustomImageView(
                                              imagePath: ImageConstant.img7xm6,
                                              height: getVerticalSize(130),
                                              width: getHorizontalSize(91),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(10)),
                                              alignment: Alignment.center)
                                        ]))
                              ])),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_top_doctor".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtRalewayRomanSemiBold16Gray90001),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtSeeall();
                                    },
                                    child: Padding(
                                        padding: getPadding(bottom: 2),
                                        child: Text("lbl_see_all".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRalewayRomanMedium14)))
                              ])),
                      Padding(
                          padding: getPadding(top: 13),
                          child: Obx(() => GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisExtent: getVerticalSize(191),
                                      crossAxisCount: 2,
                                      mainAxisSpacing: getHorizontalSize(17),
                                      crossAxisSpacing: getHorizontalSize(17)),
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: controller
                                  .homeModelObj.value.homeItemList.length,
                              itemBuilder: (context, index) {
                                HomeItemModel model = controller
                                    .homeModelObj.value.homeItemList[index];
                                return HomeItemWidget(model);
                              })))
                    ]))));
  }

  onTapPharmacy() {
    Get.toNamed(AppRoutes.pharmacyScreen);
  }

  onTapTxtSeeall() {
    Get.toNamed(AppRoutes.topDoctorScreen);
  }
}
