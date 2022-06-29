import 'package:get/get.dart';
import 'package:mvc_getx/apis/api_service.dart';

import 'package:mvc_getx/model/post_model.dart';

class PostController extends GetxController {
  var postList = List<PostModel>.empty().obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchPosts();
    super.onInit();
  }

  void fetchPosts() async {
    try {
      isLoading(true);
      var fetchResponse = await ApiService.getPosts();
      if (fetchResponse != null) {
        postList.assignAll(fetchResponse);
      }
    } catch (e) {
      print("Fetch Posts Error => " + e.toString());
    } finally {
      isLoading(false);
    }
  }
}
