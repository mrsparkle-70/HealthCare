import 'controller/reset_password_email_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:healthcare/core/app_export.dart';
import 'package:healthcare/presentation/reset_password_email_page/reset_password_email_page.dart';
import 'package:healthcare/presentation/reset_password_phone_page/reset_password_phone_page.dart';

class ResetPasswordEmailTabContainerScreen
    extends GetWidget<ResetPasswordEmailTabContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleft,
                          height: getSize(40),
                          width: getSize(40),
                          alignment: Alignment.centerLeft,
                          margin: getMargin(left: 24),
                          onTap: () {
                            onTapImgArrowleft();
                          }),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 24, top: 43),
                              child: Text("msg_forgot_your_pas".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRalewayRomanBold24))),
                      Container(
                          width: getHorizontalSize(319),
                          margin: getMargin(left: 24, top: 10, right: 32),
                          child: Text("msg_enter_your_emai2".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtRalewayRomanMedium16Bluegray300)),
                      Container(
                          height: getVerticalSize(51),
                          width: getHorizontalSize(327),
                          margin: getMargin(top: 23),
                          decoration: BoxDecoration(
                              color: ColorConstant.gray100,
                              borderRadius:
                                  BorderRadius.circular(getHorizontalSize(12))),
                          child: TabBar(
                              controller: controller.tabController,
                              labelColor: ColorConstant.blue600,
                              labelStyle: TextStyle(
                                  fontSize: getFontSize(14),
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w600),
                              unselectedLabelColor: ColorConstant.blueGray400,
                              unselectedLabelStyle: TextStyle(
                                  fontSize: getFontSize(14),
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w500),
                              indicatorPadding: getPadding(all: 4.0),
                              indicator: BoxDecoration(
                                  color: ColorConstant.whiteA700,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(8)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: ColorConstant.black9000c,
                                        spreadRadius: getHorizontalSize(2),
                                        blurRadius: getHorizontalSize(2),
                                        offset: Offset(0, 0))
                                  ]),
                              tabs: [
                                Tab(
                                    child: Text("lbl_email".tr,
                                        overflow: TextOverflow.ellipsis)),
                                Tab(
                                    child: Text("lbl_phone".tr,
                                        overflow: TextOverflow.ellipsis))
                              ])),
                      Container(
                          height: getVerticalSize(525),
                          child: TabBarView(
                              controller: controller.tabController,
                              children: [
                                ResetPasswordEmailPage(),
                                ResetPasswordPhonePage()
                              ]))
                    ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
