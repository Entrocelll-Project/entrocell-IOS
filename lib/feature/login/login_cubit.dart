// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:entrocell_app/feature/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

final class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState());

  void changeObscureText(bool value) {
    emit(state.copyWith(obscureText: value));
  }

  Future<void> loginMock(BuildContext context) async {
    var url = Uri.https('3ll89.wiremockapi.cloud', 'login');
    var response = await http.post(url, body: jsonEncode({"msisdn": "5339635384", "password": "asdf"}));
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    if (response.statusCode == 201) {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return const HomeView();
        },
      ));
    }

    //print(await http.read(Uri.https('example.com', 'foobar.txt')));
    emit(state.copyWith());
  }
}

class LoginState {
  LoginState({
    this.obscureText = false,
  });

  final bool obscureText;

  LoginState copyWith({
    bool? obscureText,
  }) {
    return LoginState(
      obscureText: obscureText ?? this.obscureText,
    );
  }
}
