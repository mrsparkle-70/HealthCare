import 'package:get/get.dart';
import 'profile_item_model.dart';

class ProfileModel {
  RxList<ProfileItemModel> profileItemList =
      RxList.generate(3, (index) => ProfileItemModel());
}
