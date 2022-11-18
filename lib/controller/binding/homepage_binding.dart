import 'package:get/get.dart';
import 'package:getcash/controller/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IndiaController());
  }
}
