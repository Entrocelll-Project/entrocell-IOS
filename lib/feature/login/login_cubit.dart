// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:entrocell_app/feature/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

final class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState());

  void changeObscureText(bool value) {
    emit(state.copyWith(obscureText: value));
  }

  Future<void> loginMock(BuildContext context, String telNo, String password) async {
    //var url = Uri.https('3ll89.wiremockapi.cloud', 'login');
    //var urlLogin = Uri.http('34.125.2.150:8080', '/login', {'msisdn': '5339635384', 'password': '12345'});
    var urlLogin = Uri.http('34.125.2.150:8080', '/login', {'msisdn': telNo, 'password': password});
    var urlFetch = Uri.http('34.125.2.150:8080', '/balance', {'msisdn': '5339635384'});
    var response = await http.get(urlLogin);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    if (response.statusCode == 201 || response.statusCode == 200) {
      // ignore: use_build_context_synchronously
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
