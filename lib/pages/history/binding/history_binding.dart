import 'package:get/get.dart';

import '../controller/history_controller.dart';

class HistoryBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HistoryController());
  }
}
