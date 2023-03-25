import 'package:healthcare/core/app_export.dart';
import 'package:healthcare/presentation/top_doctor_screen/models/top_doctor_model.dart';

class TopDoctorController extends GetxController {
  Rx<TopDoctorModel> topDoctorModelObj = TopDoctorModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
