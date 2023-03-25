import 'controller/audio_call_controller.dart';
import 'package:flutter/material.dart';
import 'package:healthcare/core/app_export.dart';
import 'package:healthcare/widgets/custom_icon_button.dart';

class AudioCallScreen extends GetWidget<AudioCallController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            color: ColorConstant.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgAudiocall,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: getPadding(
              top: 23,
              bottom: 23,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgImage10115x115,
                  height: getSize(
                    115,
                  ),
                  width: getSize(
                    115,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      57,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 168,
                  ),
                  child: Text(
                    "lbl_00_05_24".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRalewayRomanMedium14WhiteA700,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 23,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                        height: 52,
                        width: 52,
                        variant: IconButtonVariant.FillGray40087,
                        child: CustomImageView(
                          svgPath: ImageConstant.imgVideocamera52x52,
                        ),
                      ),
                      CustomIconButton(
                        height: 52,
                        width: 52,
                        margin: getMargin(
                          left: 25,
                        ),
                        variant: IconButtonVariant.FillRed300,
                        child: CustomImageView(
                          svgPath: ImageConstant.imgCall52x52,
                        ),
                      ),
                      CustomIconButton(
                        height: 52,
                        width: 52,
                        margin: getMargin(
                          left: 25,
                        ),
                        variant: IconButtonVariant.FillGray40087,
                        child: CustomImageView(
                          svgPath: ImageConstant.imgMicrophone,
                        ),
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgArrowup,
                  height: getSize(
                    20,
                  ),
                  width: getSize(
                    20,
                  ),
                  margin: getMargin(
                    top: 50,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 1,
                  ),
                  child: Text(
                    "msg_swipe_back_to_m".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRalewayRomanMedium14WhiteA700,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
