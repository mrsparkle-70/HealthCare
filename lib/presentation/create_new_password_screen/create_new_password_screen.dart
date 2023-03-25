import 'controller/create_new_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:healthcare/core/app_export.dart';
import 'package:healthcare/widgets/custom_button.dart';
import 'package:healthcare/widgets/custom_text_form_field.dart';
import 'package:healthcare/presentation/create_new_password_success_dialog/create_new_password_success_dialog.dart';
import 'package:healthcare/presentation/create_new_password_success_dialog/controller/create_new_password_success_controller.dart';

class CreateNewPasswordScreen extends GetWidget<CreateNewPasswordController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, right: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleft,
                          height: getSize(40),
                          width: getSize(40),
                          onTap: () {
                            onTapImgArrowleft();
                          }),
                      Padding(
                          padding: getPadding(top: 40),
                          child: Text("msg_create_new_pass".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewayRomanBold24)),
                      Padding(
                          padding: getPadding(top: 14),
                          child: Text("msg_create_your_new".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewayRomanRegular16)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.inputController,
                          hintText: "msg_enter_new_passw".tr,
                          margin: getMargin(top: 24),
                          textInputType: TextInputType.visiblePassword,
                          prefix: Container(
                              margin: getMargin(
                                  left: 24, top: 16, right: 16, bottom: 16),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgCar)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56)),
                          suffix: Container(
                              margin: getMargin(
                                  left: 12, top: 16, right: 24, bottom: 16),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgCheckmark24x24)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56))),
                      Obx(() => CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.inputOneController,
                          hintText: "msg_confirm_passwor".tr,
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
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "lbl_create_password".tr,
                          margin: getMargin(top: 24, bottom: 5),
                          onTap: onTapCreatepasswordOne)
                    ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapCreatepasswordOne() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.only(left: 0),
      content: CreateNewPasswordSuccessDialog(
        Get.put(
          CreateNewPasswordSuccessController(),
        ),
      ),
    ));
  }
}
