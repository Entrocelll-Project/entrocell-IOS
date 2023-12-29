import 'package:entrocell_app/feature/home/home_view.dart';
import 'package:entrocell_app/feature/login/login_mixin.dart';
import 'package:entrocell_app/feature/register/register_view.dart';
import 'package:entrocell_app/product/constant/color_constant.dart';
import 'package:entrocell_app/product/constant/string_constant.dart';
import 'package:entrocell_app/product/enum/text_field_decoration_enum.dart';
import 'package:entrocell_app/product/widget/button/general_button.dart';
import 'package:entrocell_app/product/widget/card/logo_card.dart';
import 'package:entrocell_app/product/widget/field/general_field.dart';
import 'package:entrocell_app/product/widget/text/subtitle_text.dart';
import 'package:entrocell_app/product/widget/text/title_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class LoginView extends StatefulWidget with LoginMixin {
  LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  void dispose() {
    super.dispose();
    widget.passwordController.dispose();
    widget.phoneNumberController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.black,
      appBar: AppBar(backgroundColor: ColorConstant.black),
      body: SafeArea(
          child: Padding(
        padding: context.padding.normal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const LogoCard(),
            context.sized.emptySizedHeightBoxLow3x,
            _titleText(),
            context.sized.emptySizedHeightBoxLow3x,
            _phoneNumberField(),
            context.sized.emptySizedHeightBoxLow3x,
            _passwordField(),
            context.sized.emptySizedHeightBoxNormal,
            _buttonsRow(context),
            context.sized.emptySizedHeightBoxNormal,
            _lostPasswordButton(),
          ],
        ),
      )),
    );
  }

  Align _lostPasswordButton() {
    return Align(
        alignment: Alignment.centerRight,
        child: TextButton(onPressed: () {}, child: const SubtitleText(text: StringConstant.loginLostUrPassword)));
  }

  Row _buttonsRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GeneralButton(
          text: StringConstant.loginSignUp,
          page: RegisterView(),
        ),
        context.sized.emptySizedWidthBoxLow3x,
        const GeneralButton(
          text: StringConstant.loginLogin,
          page: HomeView(),
        ),
      ],
    );
  }

  GeneralTextField _passwordField() {
    return GeneralTextField(
      controller: widget.passwordController,
      decoration: TextFieldDecorationEnum.password.decoration,
      isPassword: true,
    );
  }

  GeneralTextField _phoneNumberField() => GeneralTextField(
      controller: widget.phoneNumberController, decoration: TextFieldDecorationEnum.phoneNumber.decoration);

  TitleText _titleText() => const TitleText(text: StringConstant.mainAppTitle);

  Center _logo() => const Center(child: Card(shape: CircleBorder(), child: Icon(CupertinoIcons.bolt_fill, size: 100)));
}
