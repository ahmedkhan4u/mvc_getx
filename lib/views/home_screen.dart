import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvc_getx/controller/post_controller.dart';
import 'package:mvc_getx/widgets/post_tile..dart';

class HomeScreen extends StatelessWidget {
  var postController = Get.put(PostController());

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Obx(() {
          if (postController.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
                itemCount: Get.find<PostController>().postList.length,
                itemBuilder: (context, index) {
                  if (Get.find<PostController>().postList.isEmpty) {
                    return const Center(
                      child: Text("No Data"),
                    );
                  } else {
                    return PostTile(
                      url: Get.find<PostController>().postList[index].url,
                      title: Get.find<PostController>().postList[index].title,
                    );
                  }
                });
          }
        }));
  }
}
