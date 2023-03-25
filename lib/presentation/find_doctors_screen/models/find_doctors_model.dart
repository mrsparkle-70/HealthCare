import 'package:get/get.dart';
import 'listuser_item_model.dart';
import 'doctors_item_model.dart';

class FindDoctorsModel {
  RxList<ListuserItemModel> listuserItemList =
      RxList.generate(2, (index) => ListuserItemModel());

  RxList<DoctorsItemModel> doctorsItemList =
      RxList.generate(4, (index) => DoctorsItemModel());
}
