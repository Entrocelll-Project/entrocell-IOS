import 'package:entrocell_app/product/widget/card/circular_progress_indicator.dart';
import 'package:entrocell_app/product/widget/card/text_card.dart';
import 'package:entrocell_app/product/widget/core/core_widgets.dart';
import 'package:entrocell_app/product/widget/text/bold_text.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class StatsView extends StatefulWidget {
  const StatsView({super.key});

  @override
  State<StatsView> createState() => _StatsViewState();
}

class _StatsViewState extends State<StatsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: context.padding.normal,
        child: Center(
          child: SizedBox(
            height: context.sized.height,
            width: context.sized.width,
            child: Stack(children: [
              Positioned(top: 0, left: 150, child: CoreWidgets.logo()),
              Positioned(top: 120, left: 120, child: CoreWidgets.title()),
              const Positioned(top: 240, left: 35, child: BoldText(text: '%40')),
              const Positioned(top: 400, left: 35, child: BoldText(text: '%50')),
              const Positioned(top: 560, left: 35, child: BoldText(text: '%67')),
              const Positioned(top: 240, left: 50, child: CustomCircullarProgressIndicator(value: 0.4)),
              const Positioned(top: 400, left: 50, child: CustomCircullarProgressIndicator(value: 0.5)),
              const Positioned(top: 560, left: 50, child: CustomCircullarProgressIndicator(value: 0.67)),
              const Positioned(top: 230, left: 155, child: TextCard(text: '400/100 Minutes')),
              const Positioned(top: 390, left: 155, child: TextCard(text: '25/50 GB')),
              const Positioned(top: 550, left: 155, child: TextCard(text: '67/100 SMS')),
            ]),
          ),
        ),
      ),
    );
  }
}
