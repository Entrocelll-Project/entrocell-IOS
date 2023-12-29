import 'package:entrocell_app/product/constant/string_constant.dart';
import 'package:flutter/material.dart';

enum TextFieldDecorationEnum {
  name(decoration: InputDecoration(hintText: StringConstant.formName)),
  surname(decoration: InputDecoration(hintText: StringConstant.formSurname)),
  mail(decoration: InputDecoration(hintText: StringConstant.formMail)),
  phoneNumber(
      decoration: InputDecoration(
    hintText: StringConstant.formPhoneNumber,
  )),
  password(
      decoration: InputDecoration(
    hintText: StringConstant.formPassword,
  )),
  confirmPassword(
      decoration: InputDecoration(
    hintText: StringConstant.formConfirmPassword,
  )),
  bundlePackage(decoration: InputDecoration(hintText: StringConstant.formBundlePackage)),
  ;

  final InputDecoration decoration;

  const TextFieldDecorationEnum({required this.decoration});
}
