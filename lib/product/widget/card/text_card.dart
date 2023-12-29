import 'package:entrocell_app/product/constant/color_constant.dart';
import 'package:entrocell_app/product/widget/text/subtitle_text.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class TextCard extends StatelessWidget {
  const TextCard({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(context.border.highRadius),
          gradient: const LinearGradient(
              colors: [ColorConstant.linearGradyanOneFirst, ColorConstant.linearGradyanOneLast],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight)),
      height: context.sized.dynamicHeight(.06),
      width: context.sized.dynamicWidth(.55),
      child: Center(child: SubtitleText(text: text)),
    );
  }
}
