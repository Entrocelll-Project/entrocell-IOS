import 'package:entrocell_app/product/constant/color_constant.dart';
import 'package:entrocell_app/product/widget/text/bold_text.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class GeneralButton extends StatelessWidget {
  const GeneralButton({super.key, required this.text, required this.page});
  final String text;
  final Widget page;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: context.padding.horizontalMedium + context.padding.verticalLow,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(context.border.highRadius),
          gradient: const LinearGradient(
            colors: [ColorConstant.linearGradyanThreeFist, ColorConstant.linearGradyanThreeLast],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: TextButton(onPressed: () => context.route.navigateToPage(page), child: BoldText(text: text)));
  }
}
