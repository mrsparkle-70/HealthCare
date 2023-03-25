import 'package:get/get.dart';
import 'topdoctor_item_model.dart';

class TopDoctorModel {
  RxList<TopdoctorItemModel> topdoctorItemList =
      RxList.generate(5, (index) => TopdoctorItemModel());
}
