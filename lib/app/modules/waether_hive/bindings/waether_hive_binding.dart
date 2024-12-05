import 'package:get/get.dart';

import '../controllers/waether_hive_controller.dart';

class WaetherHiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WaetherHiveController>(
      () => WaetherHiveController(),
    );
  }
}
