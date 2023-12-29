import 'package:entrocell_app/product/constant/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class SubtitleText extends StatelessWidget {
  const SubtitleText({super.key, required this.text, this.color});
  final String text;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.general.textTheme.titleLarge
          ?.copyWith(color: color ?? ColorConstant.white, fontWeight: FontWeight.bold),
    );
  }
}
