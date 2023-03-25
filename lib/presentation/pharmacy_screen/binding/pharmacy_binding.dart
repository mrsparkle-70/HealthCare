import '../controller/pharmacy_controller.dart';
import 'package:get/get.dart';

class PharmacyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PharmacyController());
  }
}
