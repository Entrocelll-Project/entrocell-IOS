import 'package:entrocell_app/feature/login/login_view.dart';
import 'package:entrocell_app/feature/register/register_mixin.dart';
import 'package:entrocell_app/product/constant/color_constant.dart';
import 'package:entrocell_app/product/constant/string_constant.dart';
import 'package:entrocell_app/product/enum/text_field_decoration_enum.dart';
import 'package:entrocell_app/product/widget/button/general_button.dart';
import 'package:entrocell_app/product/widget/core/core_widgets.dart';
import 'package:entrocell_app/product/widget/field/general_field.dart';
import 'package:entrocell_app/product/widget/text/title_text.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class RegisterView extends StatefulWidget with RegisterMixin {
  RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  void dispose() {
    super.dispose();
    widget.nameController.dispose();
    widget.surnameController.dispose();
    widget.mailController.dispose();
    widget.phoneNumberController.dispose();
    widget.passwordController.dispose();
    widget.confirmPasswordController.dispose();
    widget.bundlePackageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.black,
      body: SafeArea(
          child: Padding(
        padding: context.padding.normal,
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CoreWidgets.logo(),
                context.sized.emptySizedHeightBoxLow3x,
                const TitleText(text: StringConstant.mainAppTitle),
                context.sized.emptySizedHeightBoxLow3x,
                GeneralTextField(
                    controller: widget.nameController, decoration: TextFieldDecorationEnum.name.decoration),
                context.sized.emptySizedHeightBoxLow3x,
                GeneralTextField(
                    controller: widget.surnameController, decoration: TextFieldDecorationEnum.surname.decoration),
                context.sized.emptySizedHeightBoxLow3x,
                GeneralTextField(
                    controller: widget.mailController, decoration: TextFieldDecorationEnum.mail.decoration),
                context.sized.emptySizedHeightBoxLow3x,
                GeneralTextField(
                    controller: widget.phoneNumberController,
                    decoration: TextFieldDecorationEnum.phoneNumber.decoration),
                context.sized.emptySizedHeightBoxLow3x,
                GeneralTextField(
                    controller: widget.passwordController, decoration: TextFieldDecorationEnum.password.decoration),
                context.sized.emptySizedHeightBoxLow3x,
                GeneralTextField(
                    controller: widget.confirmPasswordController,
                    decoration: TextFieldDecorationEnum.confirmPassword.decoration),
                context.sized.emptySizedHeightBoxLow3x,
                GeneralTextField(
                    controller: widget.bundlePackageController,
                    decoration: TextFieldDecorationEnum.bundlePackage.decoration),
                context.sized.emptySizedHeightBoxLow3x,
                Align(
                    alignment: Alignment.centerRight,
                    child: GeneralButton(
                      text: StringConstant.loginSignUp,
                      onPressed: () => context.route.navigateToPage(LoginView()),
                    ))
              ]),
        ),
      )),
    );
  }
}
