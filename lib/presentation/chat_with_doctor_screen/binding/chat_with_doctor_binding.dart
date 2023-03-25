import '../controller/chat_with_doctor_controller.dart';
import 'package:get/get.dart';

class ChatWithDoctorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatWithDoctorController());
  }
}
