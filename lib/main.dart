import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'app/core/constants/theme_data.dart';

import 'app/data/models/hive/post_models.dart';
import 'app/data/models/weather/weather_model.dart';
import 'app/routes/app_pages.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  // Register unique adapters
  Hive.registerAdapter(PostModelAdapter());
  Hive.registerAdapter(WeatherModelAdapter());

  //open hive box
  await Hive.openBox<PostModel>('posts');
  await Hive.openBox<WeatherModel>('weather');
  runApp(
    GetMaterialApp(
      title: "Assignment Two",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      theme: AppThemeData.lightThemeData,
      themeMode: ThemeMode.system,
      getPages: AppPages.routes,
    ),
  );
}
