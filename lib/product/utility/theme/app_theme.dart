import 'package:flutter/material.dart';

@immutable
final class AppTheme {
  const AppTheme._();

  // Light Theme Settings
  static final ThemeData light = ThemeData.light().copyWith();

  // Dark Theme Settings
  static final ThemeData dark = ThemeData.dark().copyWith();
}
