import 'package:entrocell_app/feature/gift/gift_view.dart';
import 'package:entrocell_app/feature/package/package_view.dart';
import 'package:entrocell_app/feature/profile/profile_view.dart';
import 'package:entrocell_app/feature/stats/stats_view.dart';
import 'package:entrocell_app/product/constant/color_constant.dart';
import 'package:entrocell_app/product/constant/string_constant.dart';
import 'package:entrocell_app/product/enum/icon_size_enum.dart';
import 'package:entrocell_app/product/widget/button/general_button.dart';
import 'package:entrocell_app/product/widget/card/card_button.dart';
import 'package:entrocell_app/product/widget/core/core_widgets.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: context.padding.normal,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              context.sized.emptySizedHeightBoxNormal,
              CoreWidgets.logo(),
              context.sized.emptySizedHeightBoxLow3x,
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CardButton(icon: Icons.person, onTap: () => context.route.navigateToPage(const ProfileView())),
                context.sized.emptySizedWidthBoxHigh,
                CardButton(icon: Icons.phone, onTap: () => context.route.navigateToPage(const PackageView())),
              ]),
              context.sized.emptySizedHeightBoxLow3x,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardButton(
                      icon: Icons.calendar_month_outlined,
                      onTap: () => context.route.navigateToPage(const StatsView())),
                  context.sized.emptySizedWidthBoxHigh,
                  CardButton(icon: Icons.card_giftcard, onTap: () => context.route.navigateToPage(const GiftView())),
                ],
              ),
              context.sized.emptySizedHeightBoxLow3x,
              GeneralButton(
                text: StringConstant.homeExitButtonTitle,
                onPressed: () {},
                icon: Icon(
                  Icons.cancel_outlined,
                  color: ColorConstant.white,
                  size: IconSizeEnum.low.size,
                ),
              )
            ]),
      )),
    );
  }
}
