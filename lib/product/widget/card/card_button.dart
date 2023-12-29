import 'package:entrocell_app/product/constant/color_constant.dart';
import 'package:entrocell_app/product/enum/icon_size_enum.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CardButton extends StatelessWidget {
  const CardButton({super.key, required this.onTap, required this.icon});
  final void Function() onTap;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(context.border.normalRadius),
              gradient: const LinearGradient(
                colors: [ColorConstant.linearGradyanThreeFist, ColorConstant.linearGradyanThreeLast],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              )),
          child: Icon(
            icon,
            size: IconSizeEnum.veryHigh.size,
          )),
    );
  }
}
