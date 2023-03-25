import 'controller/reset_password_phone_controller.dart';
import 'models/reset_password_phone_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcare/core/app_export.dart';
import 'package:healthcare/widgets/custom_button.dart';
import 'package:healthcare/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordPhonePage extends StatelessWidget {
  ResetPasswordPhoneController controller =
      Get.put(ResetPasswordPhoneController(ResetPasswordPhoneModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.transparent,
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Padding(
                          padding: getPadding(left: 24, top: 24, right: 24),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: controller.mobileNoController,
                                    hintText: "lbl_1234567890".tr,
                                    variant:
                                        TextFormFieldVariant.OutlineBlue600,
                                    padding: TextFormFieldPadding.PaddingT16_2,
                                    fontStyle: TextFormFieldFontStyle
                                        .RalewayRomanMedium16Gray900,
                                    textInputAction: TextInputAction.done,
                                    textInputType: TextInputType.phone,
                                    prefix: Container(
                                        margin: getMargin(
                                            left: 24,
                                            top: 16,
                                            right: 16,
                                            bottom: 16),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgCall)),
                                    prefixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(56))),
                                CustomButton(
                                    height: getVerticalSize(56),
                                    text: "lbl_send_otp".tr,
                                    margin: getMargin(top: 32),
                                    onTap: onTapSendotp)
                              ]))
                    ])))));
  }

  onTapSendotp() {
    Get.toNamed(AppRoutes.resetPasswordVerifyCodeScreen);
  }
}
