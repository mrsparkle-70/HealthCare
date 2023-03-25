import 'package:get/get.dart';
import 'listef58faa9a71e47e_item_model.dart';
import 'listcalciumllysin_item_model.dart';

class PharmacyModel {
  RxList<Listef58faa9a71e47eItemModel> listef58faa9a71e47eItemList =
      RxList.generate(3, (index) => Listef58faa9a71e47eItemModel());

  RxList<ListcalciumllysinItemModel> listcalciumllysinItemList =
      RxList.generate(3, (index) => ListcalciumllysinItemModel());
}
