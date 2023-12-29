// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';

final class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState());

  void changeObscureText(bool value) {
    emit(state.copyWith(obscureText: value));
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
