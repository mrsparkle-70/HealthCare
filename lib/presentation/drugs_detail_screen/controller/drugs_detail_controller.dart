import 'package:healthcare/core/app_export.dart';
import 'package:healthcare/presentation/drugs_detail_screen/models/drugs_detail_model.dart';

class DrugsDetailController extends GetxController {
  Rx<DrugsDetailModel> drugsDetailModelObj = DrugsDetailModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
