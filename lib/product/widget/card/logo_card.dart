import 'package:entrocell_app/product/enum/icon_size_enum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogoCard extends StatelessWidget {
  const LogoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Card(shape: const CircleBorder(), child: Icon(CupertinoIcons.bolt_fill, size: IconSizeEnum.high.size)));
  }
}
