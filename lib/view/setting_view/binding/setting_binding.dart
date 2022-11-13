import 'package:get/get.dart';

import 'package:getcash/view/setting_view/controller/setting_controller.dart';

class SettingBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingController());
  }
}
