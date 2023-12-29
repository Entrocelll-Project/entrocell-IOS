import 'package:entrocell_app/product/constant/color_constant.dart';
import 'package:entrocell_app/product/widget/text/bold_text.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class GeneralButton extends StatelessWidget {
  const GeneralButton({super.key, required this.text, required this.onPressed, this.icon});
  final String text;
  final void Function() onPressed;
  final Icon? icon;
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
        child: TextButton(
          onPressed: onPressed,
          child: icon != null
              ? SizedBox(
                  width: context.sized.dynamicWidth(.3),
                  child: Row(
                    children: [
                      BoldText(text: text),
                      context.sized.emptySizedWidthBoxNormal,
                      icon ?? const SizedBox.shrink(),
                    ],
                  ))
              : BoldText(text: text),
        ));
  }
}
