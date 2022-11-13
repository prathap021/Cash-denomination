// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getcash/controller/binding.dart';
import 'package:getcash/view/homepage.dart';
import 'package:getcash/view/setting_view/binding/setting_binding.dart';
import 'package:getcash/view/setting_view/view/setting_view.dart';

void main() async {
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
