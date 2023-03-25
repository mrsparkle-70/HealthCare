import '../controller/my_cart_controller.dart';
import '../models/mycart_item_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcare/core/app_export.dart';

// ignore: must_be_immutable
class MycartItemWidget extends StatelessWidget {
  MycartItemWidget(this.mycartItemModelObj);

  MycartItemModel mycartItemModelObj;

  var controller = Get.find<MyCartController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 14,
      ),
      decoration: AppDecoration.outlineBluegray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder11,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgHealthvitllys50x501,
            height: getSize(
              50,
            ),
            width: getSize(
              50,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                25,
              ),
            ),
            margin: getMargin(
              left: 27,
              top: 20,
              bottom: 21,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 2,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Obx(
                          () => Text(
                            mycartItemModelObj.typeTxt.value,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterSemiBold18Gray90001,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 3,
                          ),
                          child: Obx(
                            () => Text(
                              mycartItemModelObj.measurementTxt.value,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium12,
                            ),
                          ),
                        ),
                      ],
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgTrash18x18,
                      height: getSize(
                        18,
                      ),
                      width: getSize(
                        18,
                      ),
                      margin: getMargin(
                        left: 67,
                        top: 1,
                        bottom: 21,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: getPadding(
                    top: 25,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgCar32x32,
                        height: getSize(
                          18,
                        ),
                        width: getSize(
                          18,
                        ),
                        margin: getMargin(
                          top: 1,
                          bottom: 2,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 10,
                          bottom: 2,
                        ),
                        child: Obx(
                          () => Text(
                            mycartItemModelObj.quantityTxt.value,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterSemiBold16,
                          ),
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgPlus,
                        height: getSize(
                          18,
                        ),
                        width: getSize(
                          18,
                        ),
                        margin: getMargin(
                          left: 13,
                          top: 1,
                          bottom: 2,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 68,
                        ),
                        child: Obx(
                          () => Text(
                            mycartItemModelObj.priceTxt.value,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterSemiBold18Gray90001,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
