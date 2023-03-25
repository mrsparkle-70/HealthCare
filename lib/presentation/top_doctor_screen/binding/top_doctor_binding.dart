import '../controller/top_doctor_controller.dart';
import 'package:get/get.dart';

class TopDoctorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TopDoctorController());
  }
}
