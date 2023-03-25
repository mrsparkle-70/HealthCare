import 'package:healthcare/core/app_export.dart';
import 'package:healthcare/presentation/booking_doctor_screen/models/booking_doctor_model.dart';

class BookingDoctorController extends GetxController {
  Rx<BookingDoctorModel> bookingDoctorModelObj = BookingDoctorModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
