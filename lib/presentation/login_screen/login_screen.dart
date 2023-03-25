import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:healthcare/core/app_export.dart';
import 'package:healthcare/widgets/app_bar/appbar_image.dart';
import 'package:healthcare/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:healthcare/widgets/app_bar/custom_app_bar.dart';
import 'package:healthcare/widgets/custom_button.dart';
import 'package:healthcare/widgets/custom_text_form_field.dart';
import 'package:healthcare/presentation/login_success_dialog/login_success_dialog.dart';
import 'package:healthcare/presentation/login_success_dialog/controller/login_success_controller.dart';
import 'package:healthcare/domain/googleauth/google_auth_helper.dart';
import 'package:healthcare/domain/facebookauth/facebook_auth_helper.dart';

class LoginScreen extends GetWidget<LoginController> {
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
                    onTap: onTapArrowleft),
                centerTitle: true,
                title: AppbarSubtitle2(text: "lbl_login".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 40, right: 24, bottom: 40),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.emailController,
                          hintText: "msg_enter_your_emai".tr,
                          padding: TextFormFieldPadding.PaddingT16,
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
                          controller: controller.passwordController,
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
                                      left: 12, top: 16, right: 24, bottom: 16),
                                  child: CustomImageView(
                                      svgPath: controller.isShowPassword.value
                                          ? ImageConstant.imgCheckmark24x24
                                          : ImageConstant.imgCheckmark24x24))),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56)),
                          isObscureText: !controller.isShowPassword.value)),
                      Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtForgotPassword();
                              },
                              child: Padding(
                                  padding: getPadding(top: 10),
                                  child: Text("msg_forgot_password".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtRalewayRomanMedium14)))),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "lbl_login".tr,
                          margin: getMargin(top: 32),
                          onTap: onTapLoginOne),
                      Padding(
                          padding: getPadding(left: 48, top: 26, right: 48),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("msg_don_t_have_an_a2".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRalewayRomanRegular15
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.5)))),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtSignUp();
                                    },
                                    child: Padding(
                                        padding: getPadding(left: 4, top: 1),
                                        child: Text("lbl_sign_up".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRalewayRomanMedium15)))
                              ])),
                      Padding(
                          padding: getPadding(top: 32),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(top: 8, bottom: 9),
                                    child: SizedBox(
                                        width: getHorizontalSize(137),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.gray200))),
                                Text("lbl_or".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRalewayRomanRegular16),
                                Padding(
                                    padding: getPadding(top: 8, bottom: 9),
                                    child: SizedBox(
                                        width: getHorizontalSize(137),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.gray200)))
                              ])),
                      GestureDetector(
                          onTap: () {
                            onTapRowgoogle();
                          },
                          child: Container(
                              margin: getMargin(top: 29),
                              padding: getPadding(
                                  left: 18, top: 16, right: 18, bottom: 16),
                              decoration: AppDecoration.outlineGray200.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgGoogle,
                                    height: getVerticalSize(20),
                                    width: getHorizontalSize(19),
                                    margin: getMargin(top: 1, bottom: 1)),
                                Padding(
                                    padding: getPadding(left: 52, top: 3),
                                    child: Text("msg_sign_in_with_go".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtRalewayRomanSemiBold16))
                              ]))),
                      Container(
                          margin: getMargin(top: 16),
                          padding: getPadding(
                              left: 18, top: 16, right: 18, bottom: 16),
                          decoration: AppDecoration.outlineGray200.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCamera,
                                height: getVerticalSize(20),
                                width: getHorizontalSize(16),
                                margin: getMargin(top: 1, bottom: 1),
                                onTap: () {
                                  onTapImgCamera();
                                }),
                            Padding(
                                padding: getPadding(left: 60, top: 3),
                                child: Text("msg_sign_in_with_ap".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRalewayRomanSemiBold16))
                          ])),
                      GestureDetector(
                          onTap: () {
                            onTapRowfacebook();
                          },
                          child: Container(
                              margin: getMargin(top: 16, bottom: 5),
                              padding: getPadding(
                                  left: 18, top: 16, right: 18, bottom: 16),
                              decoration: AppDecoration.outlineGray200.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8),
                              child: Row(children: [
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: getMargin(top: 1, bottom: 1),
                                    color: ColorConstant.blue60002,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8),
                                    child: Container(
                                        height: getSize(20),
                                        width: getSize(20),
                                        padding: getPadding(
                                            left: 6,
                                            top: 4,
                                            right: 6,
                                            bottom: 4),
                                        decoration: AppDecoration.fillBlue60002
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8),
                                        child: Stack(children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgFacebook,
                                              height: getVerticalSize(11),
                                              width: getHorizontalSize(6),
                                              alignment: Alignment.center)
                                        ]))),
                                Padding(
                                    padding: getPadding(left: 43, top: 3),
                                    child: Text("msg_sign_in_with_fa".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtRalewayRomanSemiBold16))
                              ])))
                    ]))));
  }

  onTapTxtForgotPassword() {
    Get.toNamed(AppRoutes.resetPasswordEmailTabContainerScreen);
  }

  onTapLoginOne() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.only(left: 0),
      content: LoginSuccessDialog(
        Get.put(
          LoginSuccessController(),
        ),
      ),
    ));
  }

  onTapTxtSignUp() {
    Get.toNamed(AppRoutes.signUpScreen);
  }

  onTapRowgoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapImgCamera() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }

  onTapRowfacebook() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapArrowleft() {
    Get.back();
  }
}
