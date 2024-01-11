import 'package:flutter/material.dart';

enum ImagesEnum {
  // ignore: constant_identifier_names
  entrocell_logo
}

extension ImagesEnumExtension on ImagesEnum {
  get toPath => 'assets/images/image_$name.png';
  get toImage => Image.asset(toPath);
}
