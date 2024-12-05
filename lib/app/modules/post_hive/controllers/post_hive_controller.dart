import 'package:bd_calling/app/domain/repositories/hive_repository.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../../../data/models/hive/post_models.dart';
import '../../../data/models/network_response.dart';

class PostHiveController extends GetxController {
  final isLoading = false.obs;
  final posts = <PostModel>[].obs;

  final Box<PostModel> postBox = Hive.box<PostModel>('posts');

  @override
  void onInit() {
    super.onInit();
    loadPosts();
  }

  Future<void> loadPosts() async {
    if (postBox.isNotEmpty) {
      // Load cached data if available
      posts.value = postBox.values.toList();
    } else {
      await fetchPosts();
    }
  }

  Future<void> fetchPosts() async {
    isLoading.value = true;

    final NetworkResponse response = await HiveRepository.getPost();
    if (response.isSuccess) {
      // Parse JSON response
      final fetchedPosts = postModelFromJson(response.jsonResponse!);

      // Save to Hive for offline access
      await postBox.clear(); // Clear old data
      await postBox.addAll(fetchedPosts);

      // Update observable list
      posts.value = fetchedPosts;
    }

    isLoading.value = false;
  }
}
