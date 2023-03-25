import 'package:get/get.dart';

class ListuserItemModel {
  Rx<String> generalTxt = Rx("lbl_general".tr);

  Rx<String> lungsTxt = Rx("lbl_lungs".tr);

  Rx<String> dentistvalueTxt = Rx("lbl_dentist".tr);

  Rx<String> psychiatristvalueTxt = Rx("lbl_psychiatrist".tr);

  String? id = "";
}
