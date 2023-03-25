import '../controller/booking_doctor_controller.dart';
import 'package:get/get.dart';

class BookingDoctorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookingDoctorController());
  }
}
