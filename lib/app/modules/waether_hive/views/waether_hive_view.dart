import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/waether_hive_controller.dart';

class WaetherHiveView extends GetView<WaetherHiveController> {
  const WaetherHiveView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WaetherHiveView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'WaetherHiveView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
