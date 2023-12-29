import 'package:entrocell_app/product/constant/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class BoldText extends StatelessWidget {
  const BoldText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          context.general.textTheme.headlineMedium?.copyWith(color: ColorConstant.white, fontWeight: FontWeight.bold),
    );
  }
}
