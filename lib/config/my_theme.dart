import 'package:apnanotes/config/my_colors.dart';
import 'package:flutter/material.dart';

var lightTheme = ThemeData(
  drawerTheme: const DrawerThemeData(
    backgroundColor: bgColor,
  ),
  scaffoldBackgroundColor: bgColor,
  useMaterial3: true,
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    backgroundColor: bgColor,
    iconTheme: IconThemeData(
      color: textColor,
    ),
    titleTextStyle: TextStyle(
      color: whiteColor,
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
  ),
);
