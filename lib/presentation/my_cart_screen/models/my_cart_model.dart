import 'package:get/get.dart';
import 'mycart_item_model.dart';

class MyCartModel {
  RxList<MycartItemModel> mycartItemList =
      RxList.generate(2, (index) => MycartItemModel());
}
