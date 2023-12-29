import 'package:entrocell_app/product/constant/color_constant.dart';
import 'package:entrocell_app/product/constant/string_constant.dart';
import 'package:entrocell_app/product/widget/core/core_widgets.dart';
import 'package:entrocell_app/product/widget/text/bold_text.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class GiftView extends StatefulWidget {
  const GiftView({super.key});

  @override
  State<GiftView> createState() => _GiftViewState();
}

class _GiftViewState extends State<GiftView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: context.padding.normal + const EdgeInsets.only(top: 50),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          CoreWidgets.logo(),
          context.sized.emptySizedHeightBoxLow3x,
          CoreWidgets.title(),
          context.sized.emptySizedHeightBoxLow3x,
          const _GiftContainer(
            text: StringConstant.giftOne,
          ),
          context.sized.emptySizedHeightBoxLow3x,
          const _GiftContainer(
            text: StringConstant.giftTwo,
          ),
          context.sized.emptySizedHeightBoxLow3x,
          const _GiftContainer(
            text: StringConstant.giftThree,
          ),
        ]),
      )),
    );
  }
}

class _GiftContainer extends StatelessWidget {
  const _GiftContainer({
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: context.sized.dynamicHeight(.1),
        width: context.sized.dynamicWidth(.7),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(context.border.highRadius),
            gradient: const LinearGradient(
                colors: [ColorConstant.linearGradyanOneFirst, ColorConstant.linearGradyanOneLast],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight)),
        child: Center(child: BoldText(text: text)),
      ),
    );
  }
}
