import '../controller/find_doctors_controller.dart';
import '../models/doctors_item_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcare/core/app_export.dart';

// ignore: must_be_immutable
class DoctorsItemWidget extends StatelessWidget {
  DoctorsItemWidget(this.doctorsItemModelObj);

  DoctorsItemModel doctorsItemModelObj;

  var controller = Get.find<FindDoctorsController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: getPadding(
          right: 24,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse8864x64,
              height: getSize(
                64,
              ),
              width: getSize(
                64,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  32,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 9,
              ),
              child: Obx(
                () => Text(
                  doctorsItemModelObj.nameTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRalewayRomanMedium13,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
