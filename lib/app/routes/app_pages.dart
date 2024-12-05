import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/post/bindings/post_binding.dart';
import '../modules/post/views/post_view.dart';
import '../modules/post_hive/bindings/post_hive_binding.dart';
import '../modules/post_hive/views/post_hive_view.dart';
import '../modules/waether_hive/bindings/waether_hive_binding.dart';
import '../modules/waether_hive/views/waether_hive_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.POST,
      page: () => const PostView(),
      binding: PostBinding(),
    ),
    GetPage(
      name: _Paths.POST_HIVE,
      page: () => const PostHiveView(),
      binding: PostHiveBinding(),
    ),
    GetPage(
      name: _Paths.WAETHER_HIVE,
      page: () => const WaetherHiveView(),
      binding: WaetherHiveBinding(),
    ),
  ];
}
