import 'package:entrocell_app/feature/login/login_cubit.dart';
import 'package:entrocell_app/product/constant/color_constant.dart';
import 'package:entrocell_app/product/enum/font_size_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';

class GeneralTextField extends StatelessWidget {
  const GeneralTextField({
    super.key,
    required this.controller,
    required this.decoration,
    this.isPassword = false,
  });

  final TextEditingController controller;
  final InputDecoration decoration;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    context.read<LoginCubit>().changeObscureText(isPassword);
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        final read = context.read<LoginCubit>();

        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(context.border.normalRadius),
            gradient: const LinearGradient(
              colors: [ColorConstant.linearGradyanTwoFist, ColorConstant.linearGradyanTwoLast],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: TextFormField(
            style: TextStyle(fontSize: FontSizeEnum.medium.size, color: ColorConstant.white),
            obscureText: isPassword ? state.obscureText : false,
            cursorColor: ColorConstant.black,
            decoration: InputDecoration(
                hintStyle: const TextStyle(color: ColorConstant.white),
                fillColor: Colors.transparent,
                hintText: decoration.hintText,
                suffix: isPassword
                    ? InkWell(
                        onTap: () => read.changeObscureText(!state.obscureText),
                        child: Icon(state.obscureText ? Icons.remove_red_eye : Icons.remove_red_eye_outlined),
                      )
                    : null,
                border: OutlineInputBorder(borderRadius: BorderRadius.all(context.border.normalRadius))),
          ),
        );
      },
    );
  }
}
