// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  backgroundColor: Colors.white,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    unselectedItemColor: Colors.black,
    selectedItemColor: Colors.redAccent,
    elevation: 0,
  ),
  highlightColor: Colors.transparent,
  splashColor: Colors.transparent,
  appBarTheme: AppBarTheme(
    color: Colors.white,
    elevation: 0,
    toolbarTextStyle: TextTheme(
      headline6: TextStyle(
        color: Colors.black,
        fontSize: 20,
      ),
    ).bodyText2,
    titleTextStyle: TextTheme(
      headline6: TextStyle(
        color: Colors.black,
        fontSize: 20,
      ),
    ).headline6,
  ),
);
