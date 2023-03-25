import '../controller/find_doctors_controller.dart';
import 'package:get/get.dart';

class FindDoctorsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FindDoctorsController());
  }
}
