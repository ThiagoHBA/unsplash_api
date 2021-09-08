import 'package:get/get.dart';
import 'package:unsplash_api/view/home/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}
