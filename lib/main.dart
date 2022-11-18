// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getcash/routes/app_pages.dart';
import 'package:getcash/routes/app_routes.dart';



import 'themes/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.splash,
      getPages: AppPages.Pages,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      // themeMode: ThemeMode.system,
    );
    //getPages: [
    //   GetPage(
    //     name: '/splash',
    //     page: () => Splash(),
    //   ),
    //   GetPage(
    //     name: '/home',
    //     page: () => Home(),
    //     binding: HomeBinding(),
    //   ),
    //   GetPage(
    //     name: '/setting',
    //     page: () => Settingview(),
    //     binding: SettingBinding(),
    //   ),
    //  ]);
  }
}
