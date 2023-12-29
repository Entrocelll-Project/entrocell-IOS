import 'package:entrocell_app/product/constant/color_constant.dart';
import 'package:flutter/material.dart';

class CustomCircullarProgressIndicator extends StatelessWidget {
  const CustomCircullarProgressIndicator({super.key, required this.value});
  final double value;

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      backgroundColor: ColorConstant.purpleDark,
      color: ColorConstant.pink,
      strokeAlign: 2.75,
      strokeWidth: 30,
      value: value,
      strokeCap: StrokeCap.round,
    );
  }
}
