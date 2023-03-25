import 'package:healthcare/core/app_export.dart';
import 'package:healthcare/presentation/my_cart_screen/models/my_cart_model.dart';

class MyCartController extends GetxController {
  Rx<MyCartModel> myCartModelObj = MyCartModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
