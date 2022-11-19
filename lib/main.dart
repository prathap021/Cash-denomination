// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getcash/routes/app_pages.dart';
import 'package:getcash/routes/app_routes.dart';
import 'package:getcash/themes/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // theme: Themes().lightTheme,
    //   darkTheme: Themes().darkTheme,
    //   themeMode: ThemeService().getThemeMode(),
    //   home: Buddyshare());
    return GetMaterialApp(
      initialRoute: AppRoutes.home,
      getPages: AppPages.Pages,
      debugShowCheckedModeBanner: false,
      theme: Themes().lightTheme,
      darkTheme: Themes().darkTheme,
      themeMode: ThemeService().getThemeMode(),

      // themeMode: ThemeMode.system,
    );
  }
}
