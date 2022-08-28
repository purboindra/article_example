import 'package:get/get.dart';

import '../controllers/impian_controller.dart';

class ImpianBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImpianController>(
      () => ImpianController(),
    );
  }
}
