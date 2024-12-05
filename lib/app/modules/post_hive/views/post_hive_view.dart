import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/post_hive_controller.dart';

class PostHiveView extends GetView<PostHiveController> {
  const PostHiveView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PostHiveView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PostHiveView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
