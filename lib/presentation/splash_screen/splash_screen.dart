import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:healthcare/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue600,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgVector,
                          height: getVerticalSize(130),
                          width: getHorizontalSize(117)),
                      Padding(
                          padding: getPadding(top: 15, bottom: 5),
                          child: Text("lbl_helthio".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewayRomanBold50))
                    ]))));
  }
}
