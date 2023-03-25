import 'package:healthcare/core/app_export.dart';
import 'package:healthcare/presentation/doctor_detail_screen/models/doctor_detail_model.dart';

class DoctorDetailController extends GetxController {
  Rx<DoctorDetailModel> doctorDetailModelObj = DoctorDetailModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
