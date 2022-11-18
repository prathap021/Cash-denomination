// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getcash/screens/home_screens/binding/homepage_binding.dart';
import 'package:getcash/screens/setting_screen/view/setting_view.dart';

import 'screens/setting_screen/binding/setting_binding.dart';
import 'screens/home_screens/view/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(initialRoute: '/home', getPages: [
      GetPage(
        name: '/home',
        page: () => Home(),
        binding: HomeBinding(),
      ),
      GetPage(
        name: '/setting',
        page: () => Settingview(),
        binding: SettingBinding(),
      ),
    ]);
  }
}
