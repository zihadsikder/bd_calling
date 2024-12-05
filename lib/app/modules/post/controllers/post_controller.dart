import 'package:get/get.dart';

import '../../../data/models/network_response.dart';
import '../../../data/models/post/post_model.dart';
import '../../../domain/repositories/post_repository.dart';

class PostController extends GetxController {
  final isLoading = false.obs;
  final posts  = <PostModels>[].obs;
  @override
  void onInit() {
    super.onInit();
    getPosts();
  }

  Future<void> getPosts() async {
    isLoading.value = true;
    final NetworkResponse response = await PostRepository.getPosts();
    if (response.isSuccess) {
      posts.value = postModelsFromJson(response.jsonResponse!);

    }
    isLoading.value = false;
  }
}
