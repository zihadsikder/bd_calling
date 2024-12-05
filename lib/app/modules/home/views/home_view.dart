import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Assignment App')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => Get.toNamed(Routes.POST),
            child: Text('Assignment 1'),
          ),
          ElevatedButton(
            onPressed: () => Get.toNamed(Routes.POST_HIVE),
            child: Text('Assignment 2'),
          ),
          ElevatedButton(
            onPressed: () => Get.toNamed(Routes.WAETHER_HIVE),
            child: Text('Assignment 3'),
          ),
        ],
      ),
    );
  }
}
