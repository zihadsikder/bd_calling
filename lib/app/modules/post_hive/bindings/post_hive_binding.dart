import 'package:get/get.dart';

import '../controllers/post_hive_controller.dart';

class PostHiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PostHiveController>(
      () => PostHiveController(),
    );
  }
}
