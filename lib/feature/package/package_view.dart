import 'package:entrocell_app/product/constant/string_constant.dart';
import 'package:entrocell_app/product/widget/text/bold_text.dart';
import 'package:entrocell_app/product/widget/text/subtitle_text.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class PackageView extends StatefulWidget {
  const PackageView({super.key});

  @override
  State<PackageView> createState() => _PackageViewState();
}

class _PackageViewState extends State<PackageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: context.padding.normal,
        child: Center(
            child: DataTable(
          horizontalMargin: 0,
          columnSpacing: context.sized.dynamicWidth(.2),
          dataRowMaxHeight: context.sized.dynamicHeight(.1),
          columns: const [
            DataColumn(label: BoldText(text: StringConstant.packageDate)),
            DataColumn(label: BoldText(text: StringConstant.packageUsedTime)),
          ],
          rows: [
            DataRow(cells: [
              DataCell(SizedBox(
                width: context.sized.dynamicWidth(.3),
                child: const SubtitleText(
                  text: '11/04/2023',
                ),
              )),
              const DataCell(SubtitleText(
                text: '9 minutes 30 seconds',
              )),
            ]),
            const DataRow(cells: [
              DataCell(SubtitleText(text: '15/04/2023')),
              DataCell(SubtitleText(text: '8 minutes 23 seconds')),
            ]),
            const DataRow(cells: [
              DataCell(SubtitleText(text: '16/04/2023')),
              DataCell(SubtitleText(text: '4 minutes 47 seconds')),
            ])
          ],
        )),
      )),
    );
  }
}
