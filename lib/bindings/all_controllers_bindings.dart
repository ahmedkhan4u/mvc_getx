import 'package:get/get.dart';
import 'package:mvc_getx/controller/post_controller.dart';

class AllControllersBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PostController>(() => PostController());
  }
}
