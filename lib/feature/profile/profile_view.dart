import 'package:entrocell_app/product/widget/text/subtitle_text.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: context.padding.normal + EdgeInsets.only(top: context.sized.dynamicHeight(.2)),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SubtitleText(text: 'Name : '),
              context.sized.emptySizedWidthBoxNormal,
              const SubtitleText(text: 'name1')
            ],
          ),
          context.sized.emptySizedHeightBoxLow3x,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SubtitleText(text: 'Surname : '),
              context.sized.emptySizedWidthBoxNormal,
              const SubtitleText(text: 'surnname1')
            ],
          ),
          context.sized.emptySizedHeightBoxLow3x,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SubtitleText(text: 'Mail : '),
              context.sized.emptySizedWidthBoxNormal,
              const SubtitleText(text: 'mail@gmail.com')
            ],
          ),
          context.sized.emptySizedHeightBoxLow3x,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SubtitleText(text: 'Phone Number : '),
              context.sized.emptySizedWidthBoxNormal,
              const SubtitleText(text: '05555555555')
            ],
          ),
          context.sized.emptySizedHeightBoxLow3x,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SubtitleText(text: 'User Packages : '),
              context.sized.emptySizedWidthBoxNormal,
              const SubtitleText(text: 'package1')
            ],
          ),
        ]),
      )),
    );
  }
}
