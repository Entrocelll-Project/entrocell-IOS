import 'package:entrocell_app/product/constant/string_constant.dart';
import 'package:entrocell_app/product/enum/icon_size_enum.dart';
import 'package:entrocell_app/product/widget/text/title_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@immutable
final class CoreWidgets {
  const CoreWidgets._();

  static title() {
    return const TitleText(text: StringConstant.mainAppTitle);
  }

  static logo() {
    return Center(
        child: Card(shape: const CircleBorder(), child: Icon(CupertinoIcons.bolt_fill, size: IconSizeEnum.high.size)));
  }
}
