import 'package:get/get.dart';

import 'package:getcash/screens/setting_screen/controller/setting_controller.dart';

class SettingBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingController());
  }
}
