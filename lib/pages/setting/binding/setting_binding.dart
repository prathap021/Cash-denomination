import 'package:get/get.dart';

import 'package:getcash/pages/setting/controller/setting_controller.dart';

class SettingBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingController());
  }
}
