import 'dart:convert';

import 'package:entrocell_app/feature/stats/stats_mixin.dart.dart';
import 'package:entrocell_app/product/model/package_model.dart';
import 'package:entrocell_app/product/widget/card/circular_progress_indicator.dart';
import 'package:entrocell_app/product/widget/card/text_card.dart';
import 'package:entrocell_app/product/widget/core/core_widgets.dart';
import 'package:entrocell_app/product/widget/text/bold_text.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:kartal/kartal.dart';

class StatsView extends StatefulWidget {
  const StatsView({super.key});

  @override
  State<StatsView> createState() => _StatsViewState();
}

class _StatsViewState extends State<StatsView> with StatsMixin {
  void name(params) {}
  Future<void> fetchDatas() async {
    var response = await http.get(urlFetch);
    print('Response status: ${response.statusCode}');
    if (response.statusCode == 200 || response.statusCode == 201) {
      var decode = json.decode(response.body)[0];
      var package = PackageModel.fromJson(decode);
      setState(() {
        maxVolumeData = package.maxVolumeData! / 1073741824;
        remainingData = package.remainingData! / 1073741824;
        maxVolumeSms = package.maxVolumeSms;
        remainingSms = package.remainingSms;
        maxVolumeVoice = package.maxVolumeVoice! / 3600;
        remainingVoice = package.remainingVoice! / 3600;
        calculate();
      });
    }
  }

  void calculate() {
    setState(() {
      smsPercent = remainingSms! / maxVolumeSms!;
      voicePercent = remainingVoice! / maxVolumeVoice!;
      dataPercent = remainingData! / maxVolumeData!;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchDatas();
  }

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
              Positioned(top: 0, left: 30, child: CoreWidgets.logo()),
              Positioned(top: 240, left: 40, child: BoldText(text: '%${voicePercent?.toInt()}')),
              Positioned(top: 400, left: 40, child: BoldText(text: '%${dataPercent?.toInt()}')),
              Positioned(top: 560, left: 40, child: BoldText(text: '%${smsPercent?.toInt()}')),
              Positioned(top: 240, left: 50, child: CustomCircullarProgressIndicator(value: voicePercent ?? 0)),
              Positioned(top: 400, left: 50, child: CustomCircullarProgressIndicator(value: dataPercent ?? 0)),
              Positioned(top: 560, left: 50, child: CustomCircullarProgressIndicator(value: smsPercent ?? 0)),
              Positioned(
                  top: 230,
                  left: 155,
                  child: TextCard(text: '${remainingVoice?.toInt()}/${maxVolumeVoice?.toInt()} Minutes')),
              Positioned(
                  top: 390,
                  left: 155,
                  child: TextCard(text: '${remainingData?.toStringAsFixed(2)}/${maxVolumeData?.toInt()} GB')),
              Positioned(top: 550, left: 155, child: TextCard(text: '$remainingSms/$maxVolumeSms SMS')),
            ]),
          ),
        ),
      ),
    );
  }
}
