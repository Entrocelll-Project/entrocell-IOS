import 'package:entrocell_app/feature/login/login_cubit.dart';
import 'package:entrocell_app/feature/login/login_mixin.dart';
import 'package:entrocell_app/feature/register/register_view.dart';
import 'package:entrocell_app/product/constant/color_constant.dart';
import 'package:entrocell_app/product/constant/string_constant.dart';
import 'package:entrocell_app/product/enum/text_field_decoration_enum.dart';
import 'package:entrocell_app/product/widget/button/general_button.dart';
import 'package:entrocell_app/product/widget/core/core_widgets.dart';
import 'package:entrocell_app/product/widget/field/general_field.dart';
import 'package:entrocell_app/product/widget/text/subtitle_text.dart';
import 'package:entrocell_app/product/widget/text/title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
            context.sized.emptySizedHeightBoxNormal,
            CoreWidgets.logo(),
            context.sized.emptySizedHeightBoxLow3x,
            _phoneNumberField(),
            context.sized.emptySizedHeightBoxLow3x,
            _passwordField(),
            context.sized.emptySizedHeightBoxNormal,
            _buttonsRow(context),
            context.sized.emptySizedHeightBoxNormal,
            _lostPasswordButton(context),
          ],
        ),
      )),
    );
  }

  Align _lostPasswordButton(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: TextButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const TitleText(text: StringConstant.dialogForgotPasswordTitle),
                  content: SizedBox(
                    height: context.sized.dynamicHeight(.21),
                    child: Column(
                      children: [
                        GeneralTextField(
                            controller: widget.mailController, decoration: TextFieldDecorationEnum.mail.decoration),
                        context.sized.emptySizedHeightBoxLow3x,
                        GeneralTextField(
                            controller: widget.phoneNumberController,
                            decoration: TextFieldDecorationEnum.phoneNumber.decoration),
                      ],
                    ),
                  ),
                  actions: [
                    GeneralButton(
                      text: StringConstant.dialogForgotPasswordButtonTitle,
                      onPressed: () async {
                        await context.route.pop();
                        // ignore: use_build_context_synchronously
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const TitleText(text: StringConstant.dialogNewPasswordTitle),
                            content: SizedBox(
                              height: context.sized.dynamicHeight(.21),
                              child: Column(children: [
                                GeneralTextField(
                                    controller: widget.passwordController,
                                    decoration: TextFieldDecorationEnum.password.decoration),
                                context.sized.emptySizedHeightBoxLow3x,
                                GeneralTextField(
                                    controller: widget.confirmPasswordController,
                                    decoration: TextFieldDecorationEnum.confirmPassword.decoration),
                              ]),
                            ),
                            actions: [
                              GeneralButton(
                                text: StringConstant.dialogNewPasswordButtonTitle,
                                onPressed: () => context.route.navigateToPage(LoginView()),
                              )
                            ],
                          ),
                        );
                      },
                    )
                  ],
                ),
              );
            },
            child: const SubtitleText(
              text: StringConstant.loginLostUrPassword,
              color: ColorConstant.pink,
            )));
  }

  Row _buttonsRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GeneralButton(text: StringConstant.loginSignUp, onPressed: () => context.route.navigateToPage(RegisterView())),
        context.sized.emptySizedWidthBoxLow3x,
        //GeneralButton(text: StringConstant.loginLogin, onPressed: () => context.route.navigateToPage(const HomeView())),
        GeneralButton(text: StringConstant.loginLogin, onPressed: () => context.read<LoginCubit>().loginMock(context)),
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
}
