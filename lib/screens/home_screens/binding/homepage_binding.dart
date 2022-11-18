import 'package:get/get.dart';
import 'package:getcash/screens/home_screens/controller/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IndiaController());
  }
}
