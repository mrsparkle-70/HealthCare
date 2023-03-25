import 'package:get/get.dart';
import 'listrectangle460_item_model.dart';
import 'listunsplash86rvjm9zowy_item_model.dart';

class ArticlesModel {
  RxList<Listrectangle460ItemModel> listrectangle460ItemList =
      RxList.generate(3, (index) => Listrectangle460ItemModel());

  RxList<Listunsplash86rvjm9zowyItemModel> listunsplash86rvjm9zowyItemList =
      RxList.generate(3, (index) => Listunsplash86rvjm9zowyItemModel());
}
