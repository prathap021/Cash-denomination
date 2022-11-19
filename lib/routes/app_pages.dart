// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:get/get.dart';
import 'package:getcash/pages/history/view/history_view.dart';
import 'package:getcash/routes/app_routes.dart';

import '../pages/history/binding/history_binding.dart';
import '../pages/home/binding/homepage_binding.dart';
import '../pages/home/view/homepage.dart';
import '../pages/setting/binding/setting_binding.dart';
import '../pages/setting/view/setting_view.dart';
import '../pages/splash/splash_screen.dart';

class AppPages {
  static var Pages = [
    GetPage(
      name: AppRoutes.splash,
      page: () => Splash(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => Home(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.setting,
      page: () => Settingview(),
      binding: SettingBinding(),
    ),
    GetPage(
      name: AppRoutes.history,
      page: () => History(),
      binding: HistoryBinding(),
    ),
  ];
}
