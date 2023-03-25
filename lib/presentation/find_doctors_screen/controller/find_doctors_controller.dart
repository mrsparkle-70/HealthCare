import 'package:healthcare/core/app_export.dart';
import 'package:healthcare/presentation/find_doctors_screen/models/find_doctors_model.dart';
import 'package:flutter/material.dart';

class FindDoctorsController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<FindDoctorsModel> findDoctorsModelObj = FindDoctorsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
