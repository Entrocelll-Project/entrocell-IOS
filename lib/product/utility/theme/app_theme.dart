import 'package:entrocell_app/product/constant/color_constant.dart';
import 'package:flutter/material.dart';

@immutable
final class AppTheme {
  const AppTheme._();

  // Light Theme Settings
  static final ThemeData light = ThemeData.light().copyWith(
      scaffoldBackgroundColor: ColorConstant.black,
      appBarTheme:
          const AppBarTheme(backgroundColor: ColorConstant.black, iconTheme: IconThemeData(color: Colors.white)));

  // Dark Theme Settings
  static final ThemeData dark = ThemeData.dark().copyWith();
}
