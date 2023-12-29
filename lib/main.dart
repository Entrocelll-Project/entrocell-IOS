import 'package:entrocell_app/feature/login/login_cubit.dart';
import 'package:entrocell_app/feature/login/login_view.dart';
import 'package:entrocell_app/product/constant/string_constant.dart';
import 'package:entrocell_app/product/utility/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginCubit>(create: (context) => LoginCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        title: StringConstant.mainAppTitle,
        home: LoginView(),
      ),
    );
  }
}
