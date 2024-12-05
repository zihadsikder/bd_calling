import 'package:bd_calling/app/core/confiq/app_colors.dart';
import 'package:bd_calling/app/core/constants/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenBgColor,
      appBar: AppBar(
        backgroundColor: AppColors.secondaryColor,
          title: Center(
              child: Text('Assignment',style: AppTextStyle.headerTextStyle(color: AppColors.bgColor),),
          ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => Get.toNamed(Routes.POST),
                  child: Text('Assignment 1'),
                ),
                SizedBox(
                  height: 16.0,
                ),
                ElevatedButton(
                  onPressed: () => Get.toNamed(Routes.POST_HIVE),
                  child: Text('Assignment 2'),
                ),
                SizedBox(
                  height: 16.0,
                ),
                ElevatedButton(
                  onPressed: () => Get.toNamed(Routes.WAETHER_HIVE),
                  child: Text('Assignment 3'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
