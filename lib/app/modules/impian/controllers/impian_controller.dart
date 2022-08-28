import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImpianController extends GetxController with GetTickerProviderStateMixin {
  late TabController impianController;
  late TabController teamPlayerController;

  @override
  void onInit() {
    super.onInit();
    impianController = TabController(
      length: 2,
      vsync: this,
    );
    teamPlayerController = TabController(
      length: 2,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    impianController.dispose();
    teamPlayerController.dispose();
  }
}
