import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:healthcare/core/app_export.dart';
import 'package:healthcare/widgets/app_bar/appbar_image.dart';
import 'package:healthcare/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:healthcare/widgets/app_bar/custom_app_bar.dart';
import 'package:healthcare/widgets/custom_button.dart';
import 'package:healthcare/widgets/custom_checkbox.dart';
import 'package:healthcare/widgets/custom_text_form_field.dart';
import 'package:healthcare/presentation/sign_up_success_dialog/sign_up_success_dialog.dart';
import 'package:healthcare/presentation/sign_up_success_dialog/controller/sign_up_success_controller.dart';

class SignUpScreen extends GetWidget<SignUpController> {
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
                    onTap: onTapArrowleft1),
                centerTitle: true,
                title: AppbarSubtitle2(text: "lbl_sign_up".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 40, right: 24, bottom: 40),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.enternameController,
                          hintText: "lbl_enter_your_name".tr,
                          padding: TextFormFieldPadding.PaddingT16_2,
                          prefix: Container(
                              margin: getMargin(
                                  left: 24, top: 16, right: 16, bottom: 16),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgUser)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.enteremailController,
                          hintText: "msg_enter_your_emai".tr,
                          margin: getMargin(top: 16),
                          padding: TextFormFieldPadding.PaddingT16_2,
                          textInputType: TextInputType.emailAddress,
                          prefix: Container(
                              margin: getMargin(
                                  left: 24, top: 16, right: 16, bottom: 16),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgCheckmark)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56))),
                      Obx(() => CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.enterpasswordController,
                          hintText: "msg_enter_your_pass".tr,
                          margin: getMargin(top: 16),
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          prefix: Container(
                              margin: getMargin(
                                  left: 24, top: 16, right: 16, bottom: 16),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgCar)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56)),
                          suffix: InkWell(
                              onTap: () {
                                controller.isShowPassword.value =
                                    !controller.isShowPassword.value;
                              },
                              child: Container(
                                  margin: getMargin(
                                      left: 30, top: 16, right: 24, bottom: 16),
                                  child: CustomImageView(
                                      svgPath: controller.isShowPassword.value
                                          ? ImageConstant.imgCheckmark24x24
                                          : ImageConstant.imgCheckmark24x24))),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56)),
                          isObscureText: !controller.isShowPassword.value)),
                      Obx(() => CustomCheckbox(
                          text: "msg_i_agree_to_the2".tr,
                          iconSize: getHorizontalSize(24),
                          value: controller.checkbox.value,
                          margin: getMargin(top: 16, right: 28),
                          fontStyle: CheckboxFontStyle
                              .SFProDisplayRegular14Bluegray800,
                          onChange: (value) {
                            controller.checkbox.value = value;
                          })),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "lbl_sign_up".tr,
                          margin: getMargin(top: 29),
                          onTap: onTapSignupOne),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(
                                  left: 44, top: 28, right: 45, bottom: 5),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("msg_already_have_an".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRalewayRomanRegular15
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.5))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtLogIn();
                                        },
                                        child: Padding(
                                            padding: getPadding(left: 4),
                                            child: Text("lbl_log_in2".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRalewayRomanMedium15)))
                                  ])))
                    ]))));
  }

  onTapSignupOne() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.only(left: 0),
      content: SignUpSuccessDialog(
        Get.put(
          SignUpSuccessController(),
        ),
      ),
    ));
  }

  onTapTxtLogIn() {
    Get.toNamed(AppRoutes.loginScreen);
  }

  onTapArrowleft1() {
    Get.back();
  }
}
