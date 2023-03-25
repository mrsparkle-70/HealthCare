import 'controller/onboarding_four_controller.dart';
import 'package:flutter/material.dart';
import 'package:healthcare/core/app_export.dart';
import 'package:healthcare/widgets/custom_button.dart';

class OnboardingFourScreen extends GetWidget<OnboardingFourController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 16, right: 24, bottom: 16),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  CustomImageView(
                      svgPath: ImageConstant.imgVideocamera,
                      height: getVerticalSize(66),
                      width: getHorizontalSize(59),
                      margin: getMargin(top: 163)),
                  Padding(
                      padding: getPadding(top: 5),
                      child: Text("lbl_helthio".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRalewayRomanBold25)),
                  Padding(
                      padding: getPadding(top: 40),
                      child: Text("msg_let_s_get_start".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRalewayRomanBold22Gray900)),
                  Container(
                      width: getHorizontalSize(260),
                      margin: getMargin(left: 33, top: 9, right: 32),
                      child: Text("msg_login_to_enjoy".tr,
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtRalewayRomanMedium16.copyWith(
                              letterSpacing: getHorizontalSize(0.5)))),
                  Spacer(),
                  CustomButton(
                      height: getVerticalSize(56),
                      text: "lbl_login".tr,
                      onTap: onTapLogin)
                ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(56),
                text: "lbl_sign_up".tr,
                margin: getMargin(left: 24, right: 23, bottom: 60),
                variant: ButtonVariant.OutlineBlue600_1,
                fontStyle: ButtonFontStyle.RalewayRomanSemiBold16Blue600_1,
                onTap: onTapSignup)));
  }

  onTapLogin() {
    Get.toNamed(AppRoutes.loginScreen);
  }

  onTapSignup() {
    Get.toNamed(AppRoutes.signUpScreen);
  }
}
